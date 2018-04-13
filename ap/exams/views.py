import json

from braces.views import LoginRequiredMixin, GroupRequiredMixin
from datetime import datetime

from django.contrib import messages
from django.contrib.messages.views import SuccessMessageMixin
from django.core.urlresolvers import reverse_lazy
from django.http import HttpResponseRedirect, JsonResponse
from django.views.generic import TemplateView
from django.views.generic.edit import CreateView, FormView, DeleteView
from django.views.generic.list import ListView
from django.db.models import Prefetch

from aputils.trainee_utils import trainee_from_user, is_TA
from aputils.utils import render_to_pdf
from ap.forms import TraineeSelectForm
from terms.models import Term

from .forms import ExamCreateForm, ExamReportForm
from .models import Exam, Section, Session, Responses, Makeup
from .utils import get_exam_questions, save_exam_creation, get_exam_context_data, makeup_available, save_responses, trainee_can_take_exam, save_grader_scores_and_comments, is_float

from accounts.models import Trainee
from schedules.models import Event

# PDF generation (Unused)
import cStringIO as StringIO
import xhtml2pdf.pisa as pisa
from cgi import escape


class ExamCreateView(LoginRequiredMixin, GroupRequiredMixin, FormView):

  template_name = 'exams/exam_form.html'
  form_class = ExamCreateForm
  success_url = reverse_lazy('exams:manage')
  group_required = [u'exam_graders', u'training_assistant']
  initial = {'term': Term.current_term()}

  def get_context_data(self, **kwargs):
    context = super(ExamCreateView, self).get_context_data(**kwargs)
    context['section_templates'] = dict(Section.SECTION_FORM_TEMPLATES)
    context['section_types'] = Section.SECTION_CHOICES
    return context

  def post(self, request, *args, **kwargs):
    # -1 value indicates exam is newly created
    success, message = save_exam_creation(request, None)
    return JsonResponse({'ok': success, 'msg': message})


class ExamEditView(ExamCreateView):

  def get_initial(self):
    exam = Exam.objects.get(pk=self.kwargs['pk'])
    return {'training_class': exam.training_class, 'term': exam.term, 'description': exam.description, 'duration': exam.duration}

  def get_success_url(self):
    return reverse_lazy('exams:edit', kwargs={'pk': self.kwargs['pk']})

  def get_context_data(self, **kwargs):
    context = super(ExamEditView, self).get_context_data(**kwargs)
    exam = Exam.objects.get(pk=self.kwargs['pk'])
    context['exam_edit'] = True
    context['is_open'] = bool(exam.is_open)
    context['is_final'] = bool(exam.category == 'F')
    context['data'] = get_exam_questions(exam, True)
    return context

  def post(self, request, *args, **kwargs):
    pk = self.kwargs['pk']
    success, message = save_exam_creation(request, pk)
    return JsonResponse({'ok': success, 'msg': message})


class ExamDelete(DeleteView, SuccessMessageMixin):
  model = Exam
  success_url = reverse_lazy('exams:manage')
  success_message = "Exam was deleted."


class ExamTemplateListView(ListView):
  template_name = 'exams/exam_template_list.html'
  model = Exam
  context_object_name = 'exams'

  def get_queryset(self):
    user = self.request.user
    is_manage = 'manage' in self.kwargs
    is_taken = 'taken' in self.kwargs
    if is_manage:
      exams = Exam.objects.all()
    elif is_taken:
      sessions = Session.objects.filter(trainee=user, is_graded=True)
      exams = []
      for session in sessions:
        if session.exam != None:
          exams.append(session.exam)
        else:
          session.delete()
      for exam in exams:
        exam.visible = True
        exam.completed = True
        exam.graded = True
      return exams
    else:
      exams = []
      if user.type == 'R':
        if user.current_term == 1 or user.current_term == 2:
          for exam in Exam.objects.filter(is_open=True):
            if exam.training_class.class_type == 'MAIN' or exam.training_class.class_type == '1YR' or exam.training_class.class_type == 'AFTN':
              exams.append(exam)
        elif user.current_term == 3 or user.current_term == 4:
          for exam in Exam.objects.filter(is_open=True):
            if exam.training_class.class_type == 'MAIN' or exam.training_class.class_type == '2YR' or exam.training_class.class_type == 'AFTN':
              exams.append(exam)
    makeup = Makeup.objects.filter(trainee=user)
    exams = list(exams)
    # TODO - Fix this. to show makeup
    for exam in exams:
      exam.visible = exam.is_open and trainee_can_take_exam(user, exam)

      # Don't show to exam service manage page
      if not is_manage and not exam.visible:
        exams.remove(exam)
        continue

      exam.completed = exam.has_trainee_completed(user)
      exam.graded = exam.is_exam_graded(user)

    return exams

  def get_context_data(self, **kwargs):
    ctx = super(ExamTemplateListView, self).get_context_data(**kwargs)
    user = self.request.user
    is_manage = 'manage' in self.kwargs
    ctx['exam_service'] = is_manage and user.is_designated_grader() or is_TA(user)
    ctx['classes'] = Event.objects.filter(start=datetime.strptime('10:15', '%H:%M'), type='C').exclude(name="Session II")\
        | Event.objects.filter(start=datetime.strptime('08:25', '%H:%M')).exclude(name="Session I")
    ctx['terms'] = Term.objects.all()
    return ctx


class SingleExamGradesListView(TemplateView, GroupRequiredMixin):
  '''
    View for graders to enter scores for paper responses for a given exam.
  '''
  template_name = 'exams/single_exam_grades.html'
  group_required = [u'exam_graders', u'training_assistant']

  def get_context_data(self, **kwargs):
    context = super(SingleExamGradesListView, self).get_context_data(**kwargs)
    exam = Exam.objects.get(pk=self.kwargs['pk'])
    context['exam'] = exam

    trainees = Trainee.objects.all().order_by('lastname')

    if exam.training_class.class_type == '1YR':
      trainees = trainees.filter(current_term__lte=2)
    elif exam.training_class.class_type == '2YR':
      trainees = trainees.filter(current_term__gte=3)

    trainees = trainees.prefetch_related('exam_sessions', Prefetch('exam_sessions', queryset=Session.objects.filter(exam=exam, time_finalized__isnull=False).order_by('-time_finalized'), to_attr='current_sessions')).prefetch_related('exam_makeup', Prefetch('exam_makeup', queryset=Makeup.objects.filter(exam=exam), to_attr='has_makeup'))

    context['data'] = trainees
    return context

  def post(self, request, *args, **kwargs):
    context = self.get_context_data()
    P = request.POST

    if 'delete-session-id' in P:
      session_id = int(P['delete-session-id'])
      Session.objects.filter(id=session_id).delete()
      messages.success(request, 'Exam deleted')

    elif 'unfinalize-session-id' in P:
      session_id = int(P['unfinalize-session-id'])
      try:
        session = Session.objects.get(id=session_id)
        session.is_graded = False
        session.save()

        if session.is_submitted_online:
          return HttpResponseRedirect(reverse_lazy('exams:grade', kwargs={'pk': session.id}))
      except Session.DoesNotExist:
        pass
    elif 'makeup-trainee-id' in P:
      trainee_id = int(P['makeup-trainee-id'])
      try:
        trainee = Trainee.objects.get(id=trainee_id)
        exam = Exam.objects.get(pk=self.kwargs['pk'])
        Makeup.objects.get_or_create(trainee=trainee, exam=exam)
      except Trainee.DoesNotExist:
        pass
    elif 'close-makeup-trainee-id' in P:
      trainee_id = int(P['close-makeup-trainee-id'])
      try:
        trainee = Trainee.objects.get(id=trainee_id)
        exam = Exam.objects.get(pk=self.kwargs['pk'])
        makeup = Makeup.objects.filter(trainee=trainee, exam=exam)
        makeup.delete()
      except Trainee.DoesNotExist:
        pass
    else:
      exam = Exam.objects.get(pk=self.kwargs['pk'])

      grades = P.getlist('new-grade')
      trainee_ids = P.getlist('trainee-id')
      # trainees = Trainee.objects.filter(id__in=trainee_ids)
      trainees = Trainee.objects.filter(id__in=trainee_ids).prefetch_related('exam_sessions', Prefetch('exam_sessions', queryset=Session.objects.filter(exam=exam, time_finalized__isnull=False).order_by('-time_finalized'), to_attr='current_sessions'))
      # Reorder to id order
      trainees_tb = dict([(str(t.id), t) for t in trainees])
      trainees = [trainees_tb[id] if id in trainees_tb else None for id in trainee_ids]

      for index, trainee in enumerate(trainees):
        if trainee is None:
          continue
        if grades[index] == "":
          continue

        if not grades[index].isdigit() or not is_float(grades[index]):
          messages.add_message(request, messages.ERROR, 'Invalid input for trainee ' + str(trainee))
          continue

        sessions = trainee.current_sessions
        # Save grades for trainees who use paper submission
        session = Session(
            exam=exam,
            trainee=trainee,
            is_submitted_online=False,
            time_finalized=datetime.now(),
            is_graded=True,
            grade=float(grades[index]))
        session.save()

      grades2 = P.getlist('session-id-grade')
      session_ids = P.getlist('session-id')
      sessions = Session.objects.filter(id__in=session_ids)
      sessions_tb = dict([(str(s.id), s) for s in sessions])
      sessions = [sessions_tb[id] if id in sessions_tb else None for id in session_ids]

      for index, session in enumerate(sessions):
        if session is None:
          continue
        grade = float(grades2[index]) if grades2[index].isdigit() or is_float(grades2[index]) else 0
        session.grade = grade
        session.is_graded = True
        session.save()
      messages.success(request, 'Exam grades saved.')

    return super(SingleExamGradesListView, self).render_to_response(context)


class GenerateGradeReports(TemplateView, GroupRequiredMixin):
  template_name = 'exams/exam_grade_reports.html'
  group_required = [u'exam_graders', u'training_assistant']

  def post(self, request, *args, **kwargs):
    context = self.get_context_data()
    return super(GenerateGradeReports, self).render_to_response(context)

  def get_context_data(self, **kwargs):
    ctx = super(GenerateGradeReports, self).get_context_data(**kwargs)
    pk = self.request.POST.get('exam')
    trainees = self.request.POST.getlist('trainee') if 'trainee' in self.request.POST else None
    initial = {}

    if pk:
      sessions = Session.objects.filter(exam__pk=pk)
      initial['exam'] = pk
    else:
      # Get all the exams
      sessions = Session.objects.all()

    ctx['sessions'] = sessions.prefetch_related('exam', 'trainee').order_by('trainee__lastname')
    if trainees:
      ctx['sessions'] = sessions.filter(trainee__in=trainees)
      initial['trainee'] = [int(t) for t in trainees]

    ctx['trainee_select_form'] = TraineeSelectForm()
    ctx['trainee_select_field'] = ExamReportForm(initial=initial)

    return ctx


class GenerateOverview(TemplateView, GroupRequiredMixin):
  template_name = 'exams/exam_overview.html'
  group_required = [u'exam_graders', u'training_assistant']

  def get_context_data(self, **kwargs):
    context = super(GenerateOverview, self).get_context_data(**kwargs)
    exam = Exam.objects.get(pk=self.kwargs['pk'])
    context['exam'] = exam
    context.update(exam.statistics())
    try:
      context['sessions'] = Session.objects.filter(exam=exam).order_by('trainee__lastname')
    except Session.DoesNotExist:
      context['sessions'] = []
    return context


class ExamMakeupView(ListView, GroupRequiredMixin):
  '''
    Prints PDF of list of trainees that has makeup option open
    TODO - Move this part to reports
  '''
  model = Makeup
  template_name = 'exams/exam_makeup_list.html'
  context_object_name = 'makeup_list'
  group_required = [u'exam_graders', u'training_assistant']

  def get_queryset(self):
    if 'pk' in self.kwargs:
      exam = Exam.objects.filter(pk=self.kwargs['pk']).first()
      return Makeup.objects.filter(exam=exam)
    return Makeup.objects.all()

  def get(self, request, *args, **kwargs):
    self.object = self.get_object()
    context = super(ExamMakeupView, self).get_context_data(**kwargs)
    return render_to_pdf(
      'exams/exam_retake_list.html',
      context
    )


class PreviewExamView(SuccessMessageMixin, ListView):
  template_name = 'exams/exam_preview.html'
  model = Session
  context_object_name = 'exam'
  fields = []

  def _get_exam(self):
    return Exam.objects.get(pk=self.kwargs['pk'])

  def _get_most_recent_session(self):
    return Session.objects.filter(exam=self._get_exam(), trainee=self.request.user).order_by('-time_started').first()

  def _get_session(self):
    if not self._exam_available():
      return None

    session = self._get_most_recent_session()
    # Create a new exam session if there is no editable exam session
    # TODO - Check if now - time_started is greater than exam.duration
    if session is None:
      session = Session(
          trainee=trainee_from_user(self.request.user),
          exam=self._get_exam(),
          is_submitted_online=True)
      session.save()

    return session

  def _exam_available(self):
    return True
    exam = self._get_exam()
    user = self.request.user

    if not trainee_can_take_exam(user, exam):
      return False

    # if the exam is in progress or doesn't exist, we're in business
    most_recent_session = self._get_most_recent_session()

    if (most_recent_session is None):
      return True

    return makeup_available(exam, user)

  def get_context_data(self, **kwargs):
    context = super(PreviewExamView, self).get_context_data(**kwargs)
    return get_exam_context_data(
        context,
        self._get_exam(),
        self._exam_available(),
        self._get_session(),
        "Take",
        False)


class TakeExamView(SuccessMessageMixin, CreateView):
  template_name = 'exams/exam.html'
  model = Session
  context_object_name = 'exam'
  fields = []

  def get_success_url(self):
    return reverse_lazy('exams:list')

  def _get_exam(self):
    return Exam.objects.get(pk=self.kwargs['pk'])

  def _get_most_recent_session(self):
    return Session.objects.filter(exam=self._get_exam(), trainee=self.request.user).order_by('-time_started').first()

  def _get_session(self):
    if not self._exam_available():
      return None

    session = self._get_most_recent_session()
    # Create a new exam session if there is no editable exam session
    # TODO - Check if now - time_started is greater than exam.duration
    if session is None:
      session = Session(
          trainee=trainee_from_user(self.request.user),
          exam=self._get_exam(),
          is_submitted_online=True)
      session.save()

    return session

  def _exam_available(self):
    return True
    exam = self._get_exam()
    user = self.request.user

    if not trainee_can_take_exam(user, exam):
      return False

    # if the exam is in progress or doesn't exist, we're in business
    most_recent_session = self._get_most_recent_session()

    if (most_recent_session is None):
      return True

    return makeup_available(exam, user)

  def get_context_data(self, **kwargs):
    context = super(TakeExamView, self).get_context_data(**kwargs)
    return get_exam_context_data(
        context,
        self._get_exam(),
        self._exam_available(),
        self._get_session(),
        "Take",
        False)

  def post(self, request, *args, **kwargs):
    is_successful = True
    finalize = False
    is_graded = False

    trainee = self.request.user
    exam = self._get_exam()
    session = self._get_session()

    body_unicode = request.body.decode('utf-8')
    body = json.loads(body_unicode)

    for k, v in body.items():
      if k == "Submit":
        if v == 'true':
          finalize = True
      else:
        section = Section.objects.filter(id=int(k)).first()
        if section:
          save_responses(session, section, v)
        else:
          is_successful = False

    # Do automatic scoring if trainee finalize exam
    total_session_score = 0
    if finalize and is_successful:
      # remove this for now per Raizel's request; what this does is it only considers this exam graded if no essay questions
      #is_graded = not session.exam.sections.filter(section_type='E').exists()
      responses = Responses.objects.filter(session=session)

      # Code to check if number of responses in section is equal or greater than number of responses needed to submit in section
      num_responses_in_section = 0
      for response in responses:
        for each_answer in response.responses:
          if response.responses[each_answer].replace(";", "") != '""':
            num_responses_in_section += 1
        if num_responses_in_section < response.section.required_number_to_submit:
          message = "Number of responses in section does not reach minimum amount of responses required."
          return JsonResponse({'bad': False, 'finalize': finalize, 'msg': message})
      for resp_obj_to_grade in responses:
        section = resp_obj_to_grade.section
        total_session_score += section.autograde(resp_obj_to_grade)
    message = 'Exam submitted successfully.'
    if finalize:
      session = self._get_session()
      session.time_finalized = datetime.now()
      session.grade = total_session_score
      session.is_graded = is_graded
      session.save()
    else:
      message = 'Exam progress saved.'

    return JsonResponse({'ok': is_successful, 'finalize': finalize, 'msg': message})


class GradeExamView(GroupRequiredMixin, CreateView):
  template_name = 'exams/exam.html'
  model = Session
  context_object_name = 'exam'
  fields = []
  group_required = [u'exam_graders', u'training_assistant']

  def get_success_url(self):
    session = Session.objects.get(pk=self.kwargs['pk'])
    return reverse_lazy('exams:grades', kwargs={'pk': session.exam.id})

  def _get_exam(self):
    session = Session.objects.get(pk=self.kwargs['pk'])
    return Exam.objects.get(pk=session.exam.id)

  def _get_session(self):
    return Session.objects.get(pk=self.kwargs['pk'])

  def _exam_available(self):
    # TODO: should sanity check that user has grader/TA permissions
    return True

  def get_context_data(self, **kwargs):
    context = super(GradeExamView, self).get_context_data(**kwargs)
    return get_exam_context_data(
        context,
        self._get_exam(),
        self._exam_available(),
        self._get_session(),
        "Grade", True)

  # Returns true if every score has a valid value
  def calculate_score(self, request, responses, session, section):
    total_score = 0
    can_finalize = True
    for index, response in enumerate(responses):
      response_parsed = response
      if response_parsed["score"].isdigit() or is_float(response_parsed["score"]):
        total_score += float(response_parsed["score"])
      else:
        can_finalize = False
        if response_parsed["score"] != "":
          messages.add_message(request, messages.ERROR, "Invalid grade value for question" + str(index + 1) + ".")

    try:
      responses_obj = Responses.objects.get(session=session, section=section)
    except Responses.DoesNotExist:
      responses_obj = Responses(session=session, section=section, score=0)

    if (responses_obj.score != total_score):
      session.grade = session.grade - responses_obj.score + total_score
      session.save()

      responses_obj.score = total_score
      responses_obj.save()

    return can_finalize

  def post(self, request, *args, **kwargs):
    is_successful = True
    finalize = False
    if 'Submit' in request.POST:
      finalize = True

    session = Session.objects.get(pk=self.kwargs['pk'])
    exam = Exam.objects.get(pk=session.exam.id)

    try:
      body_unicode = request.body.decode('utf-8')
      body = json.loads(body_unicode)
    except ValueError:
      body = []

    P = request.POST
    scores = P.getlist('question-score')
    comments = P.getlist('grader-comment')
    responses = session.responses.all()
    resp_s = {}
    total_score = 0
    index = 0
    for each in responses:
      try:
        section = Section.objects.get(exam=exam, section_index=index)
      except Section.DoesNotExist:
        is_successful = False
      resp_s['score'] = scores[index]
      if not resp_s['score'].isdigit() or not is_float(resp_s['score']):
        messages.add_message(request, messages.ERROR, 'Invalid score')
      resp_s['comments'] = comments[index]
      index += 1
      save_grader_scores_and_comments(session, section, resp_s)
      total_score += float(resp_s['score'])

    session.grade = total_score
    session.save()

    if finalize:
      session = self._get_session()
      session.is_graded = True
      session.save()

      messages.success(request, 'Exam grading submitted successfully.')
      return HttpResponseRedirect(reverse_lazy('exams:grades', kwargs={'pk': exam.id}))
    else:
      messages.success(request, 'Exam grading progress saved.')
      return self.get(request, *args, **kwargs)


class GradedExamView(TakeExamView):
  template_name = 'exams/exam_graded.html'

  def _exam_available(self):
    # TODO: should sanity check that user has grader/TA permissions
    return True

  def get_context_data(self, **kwargs):
    context = super(GradedExamView, self).get_context_data(**kwargs)
    return get_exam_context_data(
        context,
        self._get_exam(),
        self._exam_available(),
        self._get_session(),
        "View", True)
