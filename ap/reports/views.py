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

      #get all group slips in report's time range with the specified trainees that have been approved.
      filtered_group_slips = GroupSlip.objects.filter(start__gte=date_from, end__lte=date_to, trainees__in=filtered_trainees, status__in=['A', 'S'])
      pickled_group_slips = pickle.dumps(filtered_group_slips)
      
      items_for_query = data['general_report']

      #qs_rolls is the queryset of all pertinent rolls related to the filtered trainees in the date range that are tardies or absences
      pickled_query = pickle.loads(pickled_rolls)
      qs_rolls = Roll.objects.all()
      qs_rolls.query = pickled_query

      pickled_group_slips_query = pickle.loads(pickled_group_slips)
      pgsq = GroupSlip.objects.all()
      pgsq.query = pickled_group_slips_query

      for trainee in filtered_trainees:
        rtn_data[trainee.full_name] = {}
        for item in items_for_query:
          rtn_data[trainee.full_name][item] = 0
        
        group_slips_for_trainee = pgsq.query.filter(trainees=trainee)
        
        rolls_covered_in_group_slips = Roll.objects.none()

        #get rolls for special group slips; this is needed later for excluding these rolls from individual slips that cover these same rolls
        rolls_covered_in_conference_group_slips = Roll.objects.none()
        rolls_covered_in_fellowship_group_slips = Roll.objects.none()
        rolls_covered_in_gospel_group_slips = Roll.objects.none()
        rolls_covered_in_night_out_group_slips = Roll.objects.none()
        rolls_covered_in_other_group_slips = Roll.objects.none()
        rolls_covered_in_service_group_slips = Roll.objects.none()
        rolls_covered_in_team_trip_group_slips = Roll.objects.none()

        #For every group slip, get all the rolls included in them
        #print "**********************************************************************"
        #print str(group_slips_for_trainee)

        #necessary to do this due to slip.events function not working properly....
        for slip in group_slips_for_trainee:
          #print str(slip.start)
          #print str(slip.end)
          rolls_covered_in_group_slips = rolls_covered_in_group_slips | qs_rolls.query.filter(trainee=trainee, event__start__gte=slip.start, event__end__lte=slip.end).exclude(status='P')
        
        #Calculate for excused absences that can be covered by a group slip - conference, fellowship, gospel, night out, other, service, team trip
        for slip in group_slips_for_trainee:
          if 'Absences - Excused - Conference' in items_for_query and slip.type == 'CONF':
            rolls_covered_in_conference_group_slips = rolls_covered_in_conference_group_slips | qs_rolls.query.filter(trainee=trainee, event__start__gte=slip.start, event__end__lte=slip.end, status='A')
            rtn_data[trainee.full_name]['Absences - Excused - Conference'] = len(rolls_covered_in_conference_group_slips)
          if 'Absences - Excused - Fellowship' in items_for_query and slip.type == 'FWSHP':
            rolls_covered_in_fellowship_group_slips = rolls_covered_in_fellowship_group_slips | qs_rolls.query.filter(trainee=trainee, event__start__gte=slip.start, event__end__lte=slip.end, status='A')
            rtn_data[trainee.full_name]['Absences - Excused - Fellowship'] = len(rolls_covered_in_fellowship_group_slips)
          if 'Absences - Excused - Gospel' in items_for_query and slip.type == 'GOSP':
            rolls_covered_in_gospel_group_slips = rolls_covered_in_gospel_group_slips | qs_rolls.query.filter(trainee=trainee, event__start__gte=slip.start, event__end__lte=slip.end, status='A')
            rtn_data[trainee.full_name]['Absences - Excused - Gospel'] = len(rolls_covered_in_gospel_group_slips)
          if 'Absences - Excused - Night Out' in items_for_query and slip.type == 'NIGHT':
            rolls_covered_in_night_out_group_slips = rolls_covered_in_night_out_group_slips | qs_rolls.query.filter(trainee=trainee, event__start__gte=slip.start, event__end__lte=slip.end, status='A')
            rtn_data[trainee.full_name]['Absences - Excused - Night Out'] = len(rolls_covered_in_night_out_group_slips)
          if 'Absences - Excused - Other' in items_for_query and slip.type == 'OTHER':
            rolls_covered_in_other_group_slips = rolls_covered_in_other_group_slips | qs_rolls.query.filter(trainee=trainee, event__start__gte=slip.start, event__end__lte=slip.end, status='A')
            rtn_data[trainee.full_name]['Absences - Excused - Other'] = len(rolls_covered_in_other_group_slips)
          if 'Absences - Excused - Service' in items_for_query and slip.type == 'SERV':
            rolls_covered_in_service_group_slips = rolls_covered_in_service_group_slips | qs_rolls.query.filter(trainee=trainee, event__start__gte=slip.start, event__end__lte=slip.end, status='A')
            rtn_data[trainee.full_name]['Absences - Excused - Service'] = len(rolls_covered_in_service_group_slips)
          if 'Absences - Excused - Team Trip' in items_for_query and slip.type == 'TTRIP':
            rolls_covered_in_team_trip_group_slips = rolls_covered_in_team_trip_group_slips | qs_rolls.query.filter(trainee=trainee, event__start__gte=slip.start, event__end__lte=slip.end, status='A')
            rtn_data[trainee.full_name]['Absences - Excused - Team Trip'] = len(rolls_covered_in_team_trip_group_slips)

        #print len(rolls_covered_in_group_slips)
        #print "ROLLS IN GROUP SLIPS FOR " + trainee.full_name + ":"
        #for roll in rolls_covered_in_group_slips:
          #print str(roll)
        #print "**********************************************************************"

        #ABSENCES FILTER
        if 'Absences - Total' in items_for_query:
          rtn_data[trainee.full_name]['Absences - Total'] = len(qs_rolls.query.filter(trainee=trainee,status='A'))
        if 'Absences - Excused' in items_for_query:
          #get all absent rolls excused by individual leave slips (exclude rolls covered in group slips, in case a trainee has both a group and individual leave slip for the same roll)
          indv_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A', status__in=['A','S']).exclude(rolls__in=rolls_covered_in_group_slips)
          for indv_slip in indv_slips:
            rtn_data[trainee.full_name]['Absences - Excused'] += len(indv_slip.rolls.all())

          #get all absent rolls excused by groups slips
          rtn_data[trainee.full_name]['Absences - Excused'] += len(rolls_covered_in_group_slips.filter(status='A'))
          
        if 'Absences - Unexcused' in items_for_query:
          if 'Absences - Total' in rtn_data[trainee.full_name] and 'Absences - Excused' in rtn_data[trainee.full_name]:
            #save time by not needing to query again
            rtn_data[trainee.full_name]['Absences - Unexcused'] = rtn_data[trainee.full_name]['Absences - Total'] - rtn_data[trainee.full_name]['Absences - Excused']
          else:
            #get all rolls where trainee is absent and minus those excused by group and individual leave slips
            rtn_data[trainee.full_name]['Absences - Unexcused'] = len(qs_rolls.query.filter(trainee=trainee,status='A')) \
            - len(rolls_covered_in_group_slips.filter(status='A'))
            
            #exclude rolls covered in group leave slips
            indv_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A',status__in=['A','S']).exclude(rolls__in=rolls_covered_in_group_slips)
            for indv_slip in indv_slips:
              rtn_data[trainee.full_name]['Absences - Unexcused'] -= len(indv_slip.rolls.all())

        if 'Absences - Unexcused and Sickness' in items_for_query:
          #get rolls for absences that are excused with type sick
          indv_slips_sickness = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A', status__in=['A','S'], type="SICK")
          for indv_slip_sickness in indv_slips_sickness:
            rtn_data[trainee.full_name]['Absences - Unexcused and Sickness'] += len(indv_slip_sickness.rolls.all())
          if 'Absences - Unexcused' in rtn_data[trainee.full_name]:
            #get rolls for unexcused absences
            rtn_data[trainee.full_name]['Absences - Unexcused and Sickness'] += rtn_data[trainee.full_name]['Absences - Unexcused']
          else:
            #get all rolls where trainee is absent and minus those excused by group and individual leave slips
            rtn_data[trainee.full_name]['Absences - Unexcused and Sickness'] = len(qs_rolls.query.filter(trainee=trainee,status='A')) \
            - len(rolls_covered_in_group_slips.filter(status='A'))

            indv_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A',status__in=['A','S']).exclude(rolls__in=rolls_covered_in_group_slips)
            for indv_slip in indv_slips:
              rtn_data[trainee.full_name]['Absences - Unexcused and Sickness'] -= len(indv_slip.rolls.all())

        if 'Absences - Excused - Conference' in items_for_query:
          conference_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A', status__in=['A','S'], type="CONF").exclude(rolls__in=rolls_covered_in_conference_group_slips)
          for conference_slip in conference_slips:
            rtn_data[trainee.full_name]['Absences - Excused - Conference'] += len(conference_slip.rolls.all())
        if 'Absences - Excused - Family Emergency' in items_for_query:
          fam_emerg_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A', status__in=['A','S'], type="EMERG")
          for fam_emerg_slip in fam_emerg_slips:
            rtn_data[trainee.full_name]['Absences - Excused - Family Emergency'] += len(fam_emerg_slip.rolls.all())
        if 'Absences - Excused - Fellowship' in items_for_query:
          fellowship_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A', status__in=['A','S'], type="FWSHP").exclude(rolls__in=rolls_covered_in_fellowship_group_slips)
          for fellowship_slip in fellowship_slips:
            rtn_data[trainee.full_name]['Absences - Excused - Fellowship'] += len(fellowship_slip.rolls.all())
        if 'Absences - Excused - Funeral' in items_for_query:
          funeral_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A', status__in=['A','S'], type="FUNRL")
          for funeral_slip in funeral_slips:
            rtn_data[trainee.full_name]['Absences - Excused - Funeral'] += len(funeral_slip.rolls.all())
        if 'Absences - Excused - Gospel' in items_for_query:
          gospel_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A', status__in=['A','S'], type="GOSP").exclude(rolls__in=rolls_covered_in_gospel_group_slips)
          for gospel_slip in gospel_slips:
            rtn_data[trainee.full_name]['Absences - Excused - Gospel'] += len(gospel_slip.rolls.all())
        if 'Absences - Excused - Grad School/Job Interview' in items_for_query:
          intv_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A', status__in=['A','S'], type="INTVW")
          for intv_slip in intv_slips:
            rtn_data[trainee.full_name]['Absences - Excused - Grad School/Job Interview'] += len(intv_slip.rolls.all())
        if 'Absences - Excused - Graduation' in items_for_query:
          grad_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A', status__in=['A','S'], type="GRAD")
          for grad_slip in grad_slips:
            rtn_data[trainee.full_name]['Absences - Excused - Graduation'] += len(grad_slip.rolls.all())
        if 'Absences - Excused - Meal Out' in items_for_query:
          meal_out_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A', status__in=['A','S'], type="MEAL")
          for meal_out_slip in meal_out_slips:
            rtn_data[trainee.full_name]['Absences - Excused - Meal Out'] += len(meal_out_slip.rolls.all())
        if 'Absences - Excused - Night Out' in items_for_query:
          night_out_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A', status__in=['A','S'], type="NIGHT")
          for night_out_slip in night_out_slips:
            rtn_data[trainee.full_name]['Absences - Excused - Night Out'] += len(night_out_slip.rolls.all())
        if 'Absences - Excused - Other' in items_for_query:
          other_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A', status__in=['A','S'], type="OTHER").exclude(rolls__in=rolls_covered_in_other_group_slips)
          for other_slip in other_slips:
            rtn_data[trainee.full_name]['Absences - Excused - Other'] += len(other_slip.rolls.all())
        if 'Absences - Excused - Service' in items_for_query:
          service_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A', status__in=['A','S'], type="SERV").exclude(rolls__in=rolls_covered_in_service_group_slips)
          for service_slip in service_slips:
            rtn_data[trainee.full_name]['Absences - Excused - Service'] += len(service_slip.rolls.all())
        if 'Absences - Excused - Sickness' in items_for_query:
          sick_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A', status__in=['A','S'], type="SICK")
          for sick_slip in sick_slips:
            rtn_data[trainee.full_name]['Absences - Excused - Sickness'] += len(sick_slip.rolls.all())
        if 'Absences - Excused - Special' in items_for_query:
          special_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A', status__in=['A','S'], type="SPECL")
          for special_slip in special_slips:
            rtn_data[trainee.full_name]['Absences - Excused - Special'] += len(special_slip.rolls.all())
        if 'Absences - Excused - Wedding' in items_for_query:
          wedding_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A', status__in=['A','S'], type="WED")
          for wedding_slip in wedding_slips:
            rtn_data[trainee.full_name]['Absences - Excused - Wedding'] += len(wedding_slip.rolls.all())
        if 'Absences - Excused - Team Trip' in items_for_query:
          team_trip_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__contains='A', status__in=['A','S'], type="TTRIP").exclude(rolls__in=rolls_covered_in_team_trip_group_slips)
          for team_trip_slip in team_trip_slips:
            rtn_data[trainee.full_name]['Absences - Excused - Team Trip'] += len(team_trip_slip.rolls.all())

        #TARDIES FILTER
        if 'Tardies - Total' in items_for_query:
          late_tardies = len(qs_rolls.query.filter(trainee=trainee, status='T'))
          uniform_tardies = len(qs_rolls.query.filter(trainee=trainee, status='U'))
          left_class_tardies = len(qs_rolls.query.filter(trainee=trainee, status='L'))
          rtn_data[trainee.full_name]['Tardies - Total'] = late_tardies + uniform_tardies + left_class_tardies
        if 'Tardies - Uniform' in items_for_query:
          if 'uniform_tardies' in locals():
            rtn_data[trainee.full_name]['Tardies - Uniform'] = uniform_tardies
          else:
            rtn_data[trainee.full_name]['Tardies - Uniform'] = len(qs_rolls.query.filter(trainee=trainee, status='U'))
        if 'Tardies - Left Class' in items_for_query:
          if 'left_class_tardies' in locals():
            rtn_data[trainee.full_name]['Tardies - Left Class'] = left_class_tardies
          else:
            rtn_data[trainee.full_name]['Tardies - Left Class'] = len(qs_rolls.query.filter(trainee=trainee, status='L'))
        if 'Tardies - Late' in items_for_query:
          if 'late_tardies' in locals():
            rtn_data[trainee.full_name]['Tardies - Late'] = late_tardies
          else:
            rtn_data[trainee.full_name]['Tardies - Late'] = len(qs_rolls.query.filter(trainee=trainee, status='T'))
        if 'Tardies - Excused' in items_for_query or 'Tardies - Unexcused' in items_for_query:
          indv_slips = IndividualSlip.objects.filter(trainee=trainee, rolls__in=qs_rolls.query, rolls__status__in=['T','U','L'], status='A').exclude(rolls__in=rolls_covered_in_group_slips)
          if 'Tardies - Excused' in items_for_query:
            #individual slips
            for indv_slip in indv_slips:
              rtn_data[trainee.full_name]['Tardies - Excused'] += len(indv_slip.rolls.all())
            #group slips
            rtn_data[trainee.full_name]['Tardies - Excused'] += len(rolls_covered_in_group_slips.filter(status__in=['T','U','L']))
          if 'Tardies - Unexcused' in items_for_query:
            if 'Tardies - Total' in rtn_data[trainee.full_name]:
              rtn_data[trainee.full_name]['Tardies - Unexcused'] += rtn_data[trainee.full_name]['Tardies - Total']
              #individual slips
              for indv_slip in indv_slips:
                rtn_data[trainee.full_name]['Tardies - Unexcused'] -= len(indv_slip.rolls.all())
              #group slips
              rtn_data[trainee.full_name]['Tardies - Unexcused'] -= len(rolls_covered_in_group_slips.filter(status__in=['T','U','L']))
            else:
              late_tardies = len(qs_rolls.query.filter(trainee=trainee, status='T'))
              uniform_tardies = len(qs_rolls.query.filter(trainee=trainee, status='U'))
              left_class_tardies = len(qs_rolls.query.filter(trainee=trainee, status='L'))
              rtn_data[trainee.full_name]['Tardies - Unexcused'] += late_tardies + uniform_tardies + left_class_tardies
              #individual slips
              for indv_slip in indv_slips:
                rtn_data[trainee.full_name]['Tardies - Unexcused'] -= len(indv_slip.rolls.all())
              #group slips
              rtn_data[trainee.full_name]['Tardies - Unexcused'] -= len(rolls_covered_in_group_slips.filter(status__in=['T','U','L']))
          #group slip - for tardies excused get rolls for group slips

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