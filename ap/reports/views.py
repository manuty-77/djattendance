from braces.views import LoginRequiredMixin, GroupRequiredMixin
from django.views.generic.edit import FormView
from django.views.generic.list import ListView
from django.core.urlresolvers import reverse_lazy
from django.shortcuts import render
from .forms import ReportGenerateForm
from datetime import date, timedelta, datetime
from accounts.models import Trainee
from lifestudies.models import Discipline
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
    print str(data)
    rtn_data = dict() #{TRAINEE_NAME: {Absences - Total: 10, Tardies - Total: 5, ...}, TRAINEE_NAME: ...}
    date_data = dict()
    date_from = datetime.strptime(data['date_from'][0], '%m/%d/%Y')
    date_to = datetime.strptime(data['date_to'][0], '%m/%d/%Y')
    date_data['date_from'] = str(date_from)
    date_data['date_to'] = str(date_to)
    delta = date_to - date_from

    date_list = []
    for i in range(delta.days + 1):
      date_list.append(date_from + timedelta(days=i))

    trainees = Trainee.objects.all()

    if 'gender' in data.keys():
      gender = data['gender']

    if "Male" not in gender:
      trainees = trainees.filter(gender="S")
    elif "Female" not in gender:
      trainees = trainees.filter(gender="B")
    elif "Male" not in gender and "Female" not in gender:
      trainees = Trainee.objects.none()
      return rtn_data

    #Return trainees only for the terms requested by report
    if 'term' in data.keys():
      terms_filter = [int(s) for s in data['term'] if s.isdigit()]

    if 'general_report' in data.keys():
      filtered_trainees = Trainee.objects.none()
      for term in terms_filter:
        filtered_trainees = filtered_trainees | trainees.filter(current_term=int(term))
      filtered_rolls = Roll.objects.filter(trainee__in=filtered_trainees, date__in=date_list).exclude(status='P')
      
      items_for_query = data['general_report']

      for trainee in filtered_trainees:
        rtn_data[trainee.full_name] = {}
        for item in items_for_query:
          rtn_data[trainee.full_name][item] = 0
      
      """
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
      """

    if "Number of LS" in items_for_query:
      for trainee in filtered_trainees:
        rtn_data[trainee.full_name]['Number of LS'] = len(Discipline.objects.filter(trainee=trainee))

    if 'general_item' in data.keys():
      for trainee in filtered_trainees:
        for general_item in data['general_item']:
          if general_item == "Gender":
            rtn_data[trainee.full_name]["Gender"] = trainee.gender
          elif general_item == "Term":
            rtn_data[trainee.full_name]["Term"] = trainee.current_term
          elif general_item == "Sending Locality":
            if trainee.locality != None:
              rtn_data[trainee.full_name]["Sending Locality"] = trainee.locality.city.name
            else:
              rtn_data[trainee.full_name]["Sending Locality"] = 'N/A'
          elif general_item == "Team":
            rtn_data[trainee.full_name]["team"] = trainee.team.name
          elif general_item == "TA":
            rtn_data[trainee.full_name]["ta"] = trainee.TA.full_name

    context = {
      'data': rtn_data,
      'date_data': date_data
    }

    return render(request, "reports/generated_report.html", context=context)