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
import pickle

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
      pickled_rolls = pickle.dumps(filtered_rolls)

      filtered_group_slips = GroupSlip.objects.filter(start__gte=date_from, end__lte=date_to, trainees__in=filtered_trainees, status__in=['A', 'S'])
      pickled_group_slips = pickle.dumps(filtered_group_slips)
      
      items_for_query = data['general_report']

      pickled_query = pickle.loads(pickled_rolls)
      qs = Roll.objects.all()
      qs.query = pickled_query

      pickled_group_slips_query = pickle.loads(pickled_group_slips)
      pgsq = GroupSlip.objects.all()
      pgsq.query = pickled_group_slips_query

      for trainee in filtered_trainees:
        rtn_data[trainee.full_name] = {}
        for item in items_for_query:
          rtn_data[trainee.full_name][item] = 0
        
        group_slips_for_trainee = pgsq.query.filter(trainees=trainee)
        
        rolls_covered_in_group_slips = Roll.objects.none()

        #For every group slip, get all the rolls included in them
        #print "**********************************************************************"
        #print str(group_slips_for_trainee)
        for slip in group_slips_for_trainee:
          #print str(slip.start)
          #print str(slip.end)
          rolls_covered_in_group_slips = rolls_covered_in_group_slips | qs.query.filter(trainee=trainee, event__start__gte=slip.start, event__end__lte=slip.end).exclude(status='P')
        #print len(rolls_covered_in_group_slips)
        #print "ROLLS IN GROUP SLIPS FOR " + trainee.full_name + ":"
        #for roll in rolls_covered_in_group_slips:
          #print str(roll)
        #print "**********************************************************************"

        #ABSENCES FILTER
        if 'Absences - Total' in items_for_query:
          rtn_data[trainee.full_name]['Absences - Total'] = len(qs.query.filter(trainee=trainee,status='A'))
        if 'Absences - Excused' in items_for_query:
          #get all absent rolls excused by individual leave slips (exclude rolls covered in group slips, in case a trainee has both a group and individual leave slip for the same roll)
          indv_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S']).exclude(rolls__in=rolls_covered_in_group_slips)
          rtn_data[trainee.full_name]['Absences - Excused'] += len(indv_slips)

          #get all absent rolls excused by groups slips
          rtn_data[trainee.full_name]['Absences - Excused'] += len(rolls_covered_in_group_slips.filter(status='A'))
          
        if 'Absences - Unexcused' in items_for_query:
          if 'Absences - Total' in rtn_data[trainee.full_name] and 'Absences - Excused' in rtn_data[trainee.full_name]:
            rtn_data[trainee.full_name]['Absences - Unexcused'] = rtn_data[trainee.full_name]['Absences - Total'] - rtn_data[trainee.full_name]['Absences - Excused']
          else:
            rtn_data[trainee.full_name]['Absences - Unexcused'] = len(qs.query.filter(trainee=trainee,status='A')) - len(IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S']))
          #TODO GroupSlips
        if 'Absences - Unexcused and Sickness' in items_for_query:
          #get individual slips for absences that are excused with type sick
          rtn_data[trainee.full_name]['Absences - Unexcused and Sickness'] += len(IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S'], type="SICK"))
          #get individual slips for unexcused absences
          if 'Absences - Unexcused' in rtn_data[trainee.full_name]:
            rtn_data[trainee.full_name]['Absences - Unexcused and Sickness'] += rtn_data[trainee.full_name]['Absences - Unexcused']
          else:
            rtn_data[trainee.full_name]['Absences - Unexcused and Sickness'] += len(qs.query.filter(trainee=trainee,status='A')) - IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S'])    
            #TODO: get groupslips

        if 'Absences - Excused - Conference' in items_for_query:
          # need group slip
          rtn_data[trainee.full_name]['Absences - Excused - Conference'] = len(IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S'], type="CONF"))
        if 'Absences - Excused - Family Emergency' in items_for_query:
          rtn_data[trainee.full_name]['Absences - Excused - Family Emergency'] = len(IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S'], type="EMERG"))
        if 'Absences - Excused - Fellowship' in items_for_query:
          # need group slip
          rtn_data[trainee.full_name]['Absences - Excused - Fellowship'] = len(IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S'], type="FWSHP"))
        if 'Absences - Excused - Funeral' in items_for_query:
          rtn_data[trainee.full_name]['Absences - Excused - Funeral'] = len(IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S'], type="FUNRL"))
        if 'Absences - Excused - Gospel' in items_for_query:
          # need group slip
          rtn_data[trainee.full_name]['Absences - Excused - Gospel'] = len(IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S'], type="GOSP"))
        if 'Absences - Excused - Grad School/Job Interview' in items_for_query:
          rtn_data[trainee.full_name]['Absences - Excused - Grad School/Job Interview'] = len(IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S'], type="INTVW"))
        if 'Absences - Excused - Graduation' in items_for_query:
          rtn_data[trainee.full_name]['Absences - Excused - Graduation'] = len(IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S'], type="GRAD"))
        if 'Absences - Excused - Meal Out' in items_for_query:
          rtn_data[trainee.full_name]['Absences - Excused - Meal Out'] = len(IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S'], type="MEAL"))
        if 'Absences - Excused - Night Out' in items_for_query:
          rtn_data[trainee.full_name]['Absences - Excused - Night Out'] = len(IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S'], type="NIGHT"))
        if 'Absences - Excused - Other' in items_for_query:
          # need group slip
          rtn_data[trainee.full_name]['Absences - Excused - Other'] = len(IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S'], type="OTHER"))
        if 'Absences - Excused - Service' in items_for_query:
          # need group slip
          rtn_data[trainee.full_name]['Absences - Excused - Service'] = len(IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S'], type="SERV"))
        if 'Absences - Excused - Sickness' in items_for_query:
          rtn_data[trainee.full_name]['Absences - Excused - Sickness'] = len(IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S'], type="SICK"))
        if 'Absences - Excused - Special' in items_for_query:
          rtn_data[trainee.full_name]['Absences - Excused - Special'] = len(IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S'], type="SPECL"))
        if 'Absences - Excused - Wedding' in items_for_query:
          rtn_data[trainee.full_name]['Absences - Excused - Wedding'] = len(IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S'], type="WED"))
        if 'Absences - Excused - Team Trip' in items_for_query:
          # need group slip
          rtn_data[trainee.full_name]['Absences - Excused - Team Trip'] = len(IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__contains='A', status__in=['A','S'], type="TTRIP"))

        #TARDIES FILTER
        if 'Tardies - Total' in items_for_query:
          late_tardies = len(qs.query.filter(trainee=trainee, status='T'))
          uniform_tardies = len(qs.query.filter(trainee=trainee, status='U'))
          left_class_tardies = len(qs.query.filter(trainee=trainee, status='L'))
          rtn_data[trainee.full_name]['Tardies - Total'] = late_tardies + uniform_tardies + left_class_tardies
        if 'Tardies - Uniform' in items_for_query:
          if 'uniform_tardies' in locals():
            rtn_data[trainee.full_name]['Tardies - Uniform'] = uniform_tardies
          else:
            rtn_data[trainee.full_name]['Tardies - Uniform'] = len(qs.query.filter(trainee=trainee, status='U'))
        if 'Tardies - Left Class' in items_for_query:
          if 'left_class_tardies' in locals():
            rtn_data[trainee.full_name]['Tardies - Left Class'] = left_class_tardies
          else:
            rtn_data[trainee.full_name]['Tardies - Left Class'] = len(qs.query.filter(trainee=trainee, status='L'))
        if 'Tardies - Late' in items_for_query:
          if 'late_tardies' in locals():
            rtn_data[trainee.full_name]['Tardies - Late'] = late_tardies
          else:
            rtn_data[trainee.full_name]['Tardies - Late'] = len(qs.query.filter(trainee=trainee, status='T'))
        if 'Tardies - Excused' in items_for_query or 'Tardies - Unexcused' in items_for_query:
          indv_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs.query, rolls__status__in=['T','U','L'], status='A')
          if 'Tardies - Excused' in items_for_query:
            rtn_data[trainee.full_name]['Tardies - Excused'] += len(indv_slips)
          if 'Tardies - Unexcused' in items_for_query:
            if 'Tardies - Total' in rtn_data[trainee.full_name]:
              rtn_data[trainee.full_name]['Tardies - Unexcused'] += rtn_data[trainee.full_name]['Tardies - Total'] - len(indv_slips)
            else:
              late_tardies = len(qs.query.filter(trainee=trainee, status='T'))
              uniform_tardies = len(qs.query.filter(trainee=trainee, status='U'))
              left_class_tardies = len(qs.query.filter(trainee=trainee, status='L'))
              rtn_data[trainee.full_name]['Tardies - Unexcused'] += late_tardies + uniform_tardies + left_class_tardies - len(indv_slips)
          #TODO: group leave slips; PROBLEM - some GroupSlip.events returns empty list???
          #group_slips = GroupSlip.objects.filter(trainees=trainee, status='A', start__gte=date_from, end__lte=date_to)
          #print str(group_slips)


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