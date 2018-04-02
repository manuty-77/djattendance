from django.http import HttpResponse
from braces.views import LoginRequiredMixin, GroupRequiredMixin
from django.views.generic.edit import FormView
from django.views.generic.list import ListView
from django.core.urlresolvers import reverse_lazy
from django.shortcuts import render
from .forms import ReportGenerateForm
from datetime import date, timedelta, datetime
from django.utils import timezone
from django.http import JsonResponse

from accounts.models import Trainee
from lifestudies.models import Discipline
from terms.models import Term
from leaveslips.models import IndividualSlip, GroupSlip
from attendance.models import Roll

class ReportCreateView(LoginRequiredMixin, GroupRequiredMixin, FormView):
  template_name = 'reports/reports.html'
  group_required = [u'training_assistant']

  #success_url = reverse_lazy('reports:generate-reports')
  success_url = reverse_lazy('reports:report-generated')
  form_class = ReportGenerateForm

  LS_TYPES = {
      'CONF': 'Conference',
      'EMERG': 'Family Emergency',
      'FWSHP': 'Fellowship',
      'FUNRL': 'Funeral',
      'GOSP': 'Gospel',
      'INTVW': 'Grad School/Job Interview',
      'GRAD': 'Graduation',
      'MEAL': 'Meal Out',
      'NIGHT': 'Night Out',
      'OTHER': 'Other',
      'SERV': 'Service',
      'SICK': 'Sickness',
      'SPECL': 'Special',
      'WED': 'Wedding',
      'NOTIF': 'Notification Only',
      'TTRIP': 'Team Trip',
  }

  

  


class GeneratedReport(LoginRequiredMixin, GroupRequiredMixin, ListView):
  template_name = 'reports/generated_report.html'
  group_required = [u'training_assistant']

  def get_context_data(self, **kwargs):
    return {}

  def get_queryset(self):
    return {}

  def excused_status(self, trainee, roll):
    '''
    Checks if a roll in where the trainee is absent or tardy has been excused or not,
    and return the type if excused. Naming convention of returned string should match the item to query in report.
    '''
    individual_slips = IndividualSlip.objects.filter(trainee=trainee, rolls=roll)
    if len(individual_slips) > 0:
      if individual_slips[0].status == 'P' or individual_slips[0].status == 'F' or individual_slips[0].status == 'D':
        if roll.status == 'A':
          return 'Absences - Unexcused'
        elif roll.status == 'T' or roll.status == 'U' or roll.status == 'L':
           return 'Tardies - Unexcused'
      else:
        if roll.status == 'A':
          return "Absences - Excused - " + ReportCreateView.LS_TYPES[individual_slips[0].type]
        elif roll.status == 'T' or roll.status == 'U' or roll.status == 'L':
          return 'Tardies - Excused'
    
    #get group slips related to the trainee and event of the roll in question, and make sure the group_slip is for the right date
    group_slips = GroupSlip.objects.filter(trainees=trainee, start__range=[roll.date, roll.date+timedelta(days=1)])
    for group_slip in group_slips:
      if roll.event in group_slip.events:
        if len(group_slips) > 0:
          if group_slips[0].status == 'P' or group_slips[0].status == 'F' or group_slips[0].status == 'D':
            if roll.status == 'A':
              return 'Absences - Unexcused'
            elif roll.status == 'T' or roll.status == 'U' or roll.status == 'L':
              return 'Tardies - Unexcused'
          else:
            if roll.status == 'A':
              return "Absences - Excused - " + ReportCreateView.LS_TYPES[group_slips[0].type]
            elif roll.status == 'T' or roll.status == 'U' or roll.status == 'L':
              return 'Tardies - Excused'
    if roll.status == 'A':
      return 'Absences - Unexcused'
    elif roll.status == 'T' or roll.status == 'U' or roll.status == 'L':
      return 'Tardies - Unexcused'

  def post(self, request, *args, **kwargs):
    data = dict(request.POST.iterlists())
    rtn_data = dict() #{TRAINEE_NAME: {Absences - Total: 10, Tardies - Total: 5, ...}, TRAINEE_NAME: ...}
    print str(data)
    date_from = datetime.strptime(data['date_from'][0], '%m/%d/%Y')
    date_to = datetime.strptime(data['date_to'][0], '%m/%d/%Y')
    delta = date_to - date_from

    date_list = []
    for i in range(delta.days + 1):
      date_list.append(date_from + timedelta(days=i))

    trainees = Trainee.objects.all()

    gender = data['gender']
    #gender = data['gender'][0].split(';')
    print str(gender)

    if "Male" not in gender:
      trainees = trainees.filter(gender="S")
    elif "Female" not in gender:
      trainees = trainees.filter(gender="B")
    elif "Male" not in gender and "Female" not in gender:
      trainees = Trainee.objects.none()
      return rtn_data

    #Return trainees only for the terms requested by report
    terms_filter = [int(s) for s in data['term'] if s.isdigit()]
    print "FILTERED TERMS"
    print str(terms_filter)

    filtered_trainees = Trainee.objects.none()
    for term in terms_filter:
      filtered_trainees = filtered_trainees | trainees.filter(current_term=int(term))
    print "FILTERED TRAINEES"
    print str(filtered_trainees)
    filtered_rolls = Roll.objects.filter(trainee__in=filtered_trainees, date__in=date_list)
    print "FILTERED ROLLS"
    print str(filtered_rolls)
    items_for_query = data['general_report']
    #print str(items_for_query)

    for trainee in filtered_trainees:
      rtn_data[trainee.full_name] = {}
      for item in items_for_query:
        rtn_data[trainee.full_name][item] = 0
    
    for roll in filtered_rolls:
      #if roll.status == 'P':
      #  if not 'Present' in rtn_data[roll.trainee.full_name]:
      #    rtn_data[roll.trainee.full_name]['Present'] = 1
      #  else:
      #    rtn_data[roll.trainee.full_name]['Present'] += 1
      
      #logic for each 'elif' is check if item for report is present in dictionary...
      #if not, create the item for report for the trainee
      #but check to make sure it's an item to report
      if roll.status == 'A':
        if 'Absences - Total' in items_for_query:
          rtn_data[roll.trainee.full_name]['Absences - Total'] += 1
        status_of_roll = self.excused_status(roll.trainee, roll)
        if status_of_roll in items_for_query:
          rtn_data[roll.trainee.full_name][status_of_roll] += 1
        if 'Absences - Excused' in items_for_query and 'Absences - Excused' in status_of_roll:
          rtn_data[roll.trainee.full_name]['Absences - Excused'] += 1
        if 'Absences - Unexcused and Sickness' in items_for_query and ('Absences - Unexcused' in status_of_roll or 'Absences - Excused - Sickness' in status_of_roll):
          rtn_data[roll.trainee.full_name]['Absences - Unexcused and Sickness'] += 1
        if 'Classes Missed' in items_for_query and roll.event.type == 'C':
          rtn_data[roll.trainee.full_name]['Classes Missed'] += 1
      #for tardy rolls add to total tardy count as well as type of tardy count
      elif roll.status == 'T':
        if 'Tardies - Total' in items_for_query:
          rtn_data[roll.trainee.full_name]['Tardies - Total'] += 1
        if 'Tardies - Late' in items_for_query:
          rtn_data[roll.trainee.full_name]['Tardies - Late'] += 1
        status_of_roll = self.excused_status(roll.trainee, roll)
        if status_of_roll in items_for_query:
          rtn_data[roll.trainee.full_name][status_of_roll] += 1
      elif roll.status == 'U':
        if 'Tardies - Total' in items_for_query:
          rtn_data[roll.trainee.full_name]['Tardies - Total'] += 1
        if 'Tardies - Uniform' in items_for_query:
          rtn_data[roll.trainee.full_name]['Tardies - Uniform'] += 1
        status_of_roll = self.excused_status(roll.trainee, roll)
        if status_of_roll in items_for_query:
          rtn_data[roll.trainee.full_name][status_of_roll] += 1
      elif roll.status == 'L':
        if 'Tardies - Total' in items_for_query:
          rtn_data[roll.trainee.full_name]['Tardies - Total'] += 1
        if 'Tardies - Left Class' in items_for_query:
          rtn_data[roll.trainee.full_name]['Tardies - Left Class'] += 1
        status_of_roll = self.excused_status(roll.trainee, roll)
        if status_of_roll in items_for_query:
          rtn_data[roll.trainee.full_name][status_of_roll] += 1


    if "Number of LS" in items_for_query:
      for trainee in filtered_trainees:
        rtn_data[trainee.full_name]['Number of LS'] = len(Discipline.objects.filter(trainee=trainee))


    for trainee in filtered_trainees:
      for general_item in data['general_report']:
        if general_item == "gender":
          rtn_data[trainee.full_name]["Gender"] = rtn_data[trainee.gender]
        elif general_item == "term":
          rtn_data[trainee.full_name]["Term"] = rtn_data[trainee.current_term]
        elif general_item == "sending_locality":
          rtn_data[trainee.full_name]["Sending Locality"] = rtn_data[trainee.locality.city.name]
        elif general_item == "Team":
          rtn_data[trainee.full_name]["team"] = rtn_data[trainee.team.name]
        elif general_item == "TA":
          rtn_data[trainee.full_name]["ta"] = rtn_data[trainee.TA.full_name]

    """
    for item in items_for_query:
      if item == "Absences - Excused":
      elif item == "Absences - Unexcused":
      elif item == "Absences - Total":
      elif item == "Absences - Unexcused and Sickness":
      elif item == "Tardies - Late":
      elif item == "Tardies - Left Class":
      elif item == "Tardies - Uniform":
      elif item == "Tardies - Total":
      elif item == "Number of LS":
      elif item == "Classes Missed":
    """


    #for t in filtered_trainees:
    #  absences = 0
    #  tardies = 0
    #  for each_roll in t.get_attendance_record():
    #    if each_roll['attendance'] == 'A':
    #      absences += 1
    #    elif each_roll['attendance'] == 'T':
    #      tardies += 1
    #  rtn_data[t.get_full_name()] = {'Total Absences': absences, 'Total Tardies': tardies}
    
    print str(rtn_data)
    context = {
      'data': rtn_data
    }

    #context = super(ReportCreateView, self).get_context_data(**kwargs)

    #based on data, filter all the relevant data for the report

    #return render(request, 'reports/reports.html', context=context)
    return render(request, "reports/generated_report.html", context=context)

    #return JsonResponse(rtn_data)
  #def post(self, request, *args, **kwargs):




