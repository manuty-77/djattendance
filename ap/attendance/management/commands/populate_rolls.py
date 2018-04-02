from django.core.management.base import BaseCommand
from django.contrib.auth.models import Group
from attendance.models import Roll
from schedules.models import Event
from accounts.models import *
from terms.models import Term
from datetime import *
import random
import pickle

def new_roll(trainees=[], am=[]):
    events = Event.objects.filter(type="C")
    status = ['P', 'A', 'T', 'U', 'L']
    for trainee in trainees:
        if trainee.gender == "B":
            cur_am = random.choice(am.filter(gender="B"))
        elif trainee.gender == "S":
            cur_am = random.choice(am.filter(gender="S"))
        for e in events:
            random.seed()
            week = Term.current_term().term_week_of_date(date.today())
            trainee_stat = random.choice(status)
            if trainee_stat == "P":
                Roll(event=e, trainee=trainee, status=random.choice(status), submitted_by=cur_am, date=Term.get_date(Term.current_term(), week, e.weekday)).save()
            elif trainee_stat == "A":
                Roll(event=e, trainee=trainee, status="A", submitted_by=cur_am, date=Term.get_date(Term.current_term(), week, e.weekday)).save()
            else:
                Roll(event=e, trainee=trainee, status=random.choice(['A', trainee_stat]), submitted_by=cur_am, date=Term.get_date(Term.current_term(), week, e.weekday)).save()

class Command(BaseCommand):
    # to use: python ap/manage.py populate_rolls --settings=ap.settings.dev
    def _create_rolls(self):
        # change the array below to get different trainees
        trainees = Trainee.objects.filter(current_term__gt=2)
        am = Trainee.objects.filter(groups__name="attendance_monitors")
        if not len(am):
          am_group = Group.objects.get(name='attendance_monitors')
          bro = Trainee.objects.filter(gender='B').order_by('?').first()
          sis = Trainee.objects.filter(gender='S').order_by('?').first()
          print('no attendance monitors found, selecting random brother {0} and sister {1}'.format(bro, sis))
          bro.groups.add(am_group)
          sis.groups.add(am_group)
        new_roll(trainees, am)

    def _check_rolls(self):        
        count = 0
        AM = Trainee.objects.filter(groups__name="attendance_monitors")
        for t in Trainee.objects.all():
            t_exist = False
            for r in Roll.objects.filter(trainee=t):
                week, day = Term.current_term().reverse_date(r.date)
                exist = False
                for sch in t.active_schedules.filter(weeks__contains=week):
                    if r.event in sch.events.all():
                        exist = True

                if not exist:
                    count+=1
                    if r.submitted_by == t:
                        submit = 'themself'
                    elif r.submitted_by in AM:
                        submit = 'Attendance Monitor ' + r.submitted_by.full_name
                    else:
                        submit = r.submitted_by.full_name

                    if not t_exist:
                        if t.current_term > 2:
                            sa = 'in their 2nd year'
                        else:
                            sa = 'in their 1st year'

                        if t.self_attendance:
                            sa = sa + ' on self attendance'
                        else:
                            sa = sa + ' not on self attendance'
                        print t.full_name2, sa
                        t_exist = True
                    
                    print 'Roll ID', r.id, 'for', r.event.name,'with Event ID', r.event.pk, 'on', r.date, 'submitted by', submit

            if t_exist:
                print 
        print count
        print 'pulled on', datetime.now()
        
    def handle(self, *args, **options):
        # print('* Populating rolls...')
        # self._create_rolls()
        print ('* Looking through rolls...')
        self._check_rolls()
