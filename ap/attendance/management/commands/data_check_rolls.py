from django.core.management.base import BaseCommand
from attendance.models import Roll
from schedules.models import Event, Schedule
from accounts.models import Trainee
from terms.models import Term
from datetime import datetime
from leaveslips.models import IndividualSlip


class Command(BaseCommand):
  # to use: python ap/manage.py data_check_rolls --settings=ap.settings.dev
  def _mislink_rolls(self):
    # Pulls all rolls that has a mislink, the event that the rolls points to does not exist in the trainee's active schedule
    right_now = datetime.now().strftime("%m%d%Y_%H%M%S")
    f = open('../mislink_rolls' + right_now + '.txt', 'w')
    output = '{0}: {1}-- Submitted by: {2} \n'
    rolls = Roll.objects.all().order_by('event__id', 'date')
    ct = Term.current_term()
    for r in rolls:
      try:
        # it's tricky here cause you need to make sure the event exists on the right weeks.
        # there may be a roll with date in the 5th week but the schedule only has that event up until the 3rd week
        trainees = r.event.schedules.all().values('trainees')
        tr_ids = [t['trainees'] for t in trainees]
        if r.trainee.id not in tr_ids:
          print output.format(r.id, r, r.submitted_by)
          f.write(output.format(r.id, r, r.submitted_by))
        else:
          schedules = r.event.schedules.filter(trainees__in=[r.trainee]).values('weeks')
          its_good = False
          for sched in schedules:
            if ct.term_week_of_date(r.date) in sched['weeks']:
              its_good = True
              break
          if not its_good:
            print 'Roll on wrong schedule'
            print output.format(r.id, r, r.submitted_by)
            f.write('Roll on wrong schedule\n')
            f.write(output.format(r.id, r, r.submitted_by))

      except Exception as e:
        print output.format(r.id, e, r.submitted_by)
        f.write(output.format(r.id, e, r.submitted_by))
    f.close()

  def _ghost_rolls(self):
    # Pull all rolls that have a present status with no leavslips attached
    right_now = datetime.now().strftime("%m%d%Y_%H%M%S")
    f = open('../ghost_rolls' + right_now + '.txt', 'w')
    output = '{0}: {1}-- Submitted by: {2} \n'
    rolls = Roll.objects.filter(status='P').order_by('date')
    for r in rolls:
      try:
        slips = r.leaveslips.all()
        if slips.count() == 0:
          print output.format(r.id, r, r.submitted_by)
          f.write(output.format(r.id, r, r.submitted_by))
      except Exception as e:
        print output.format(r.id, e, r.submitted_by)
        f.write(output.format(r.id, e, r.submitted_by))
    f.close()

  def _mislink_leaveslips(self):
    # Pull all leaveslips submitted by trainee X and has rolls not for trainee X
    right_now = datetime.now().strftime("%m%d%Y_%H%M%S")
    f = open('../mislink_leaveslips' + right_now + '.txt', 'w')
    trainees = Trainee.objects.all()
    output = '[{0} - {1}]: [{2} - {3}]\n'
    for t in trainees:
      try:
        for slip in t.individualslips.all():
          for roll in slip.rolls.all():
            if t.id != roll.trainee.id:
              print output.format(slip.id, slip, roll.id, roll)
              f.write(output.format(slip.id, slip, roll.id, roll))
      except Exception as e:
        print(e)
        f.write(output.format(e, '!', '!', '!'))

  def handle(self, *args, **options):
    print('* Pulling Rolls with mislinked Trainee...')
    self._mislink_rolls()
    print('* Pulling "present" Rolls with no leavslips attached...')
    #self._ghost_rolls()
    print('* Pulling leaveslips with rolls that do not belong to submitting trainee')
    #self._mislink_leaveslips()
