from django.core.management.base import BaseCommand
from attendance.models import Roll
from schedules.models import Event, Schedule
from accounts.models import Trainee
from terms.models import Term
from datetime import datetime
from leaveslips.models import IndividualSlip


def out(s, f):
  print s
  f.write(s)


class Command(BaseCommand):
  # to use: python ap/manage.py data_check_rolls --settings=ap.settings.dev

  def _mislink_rolls(self):
    # Pulls all rolls that has a mislink, the event that the rolls points to does not exist in the trainee's active schedule
    right_now = datetime.now().strftime("%m%d%Y_%H%M%S")
    rolls = Roll.objects.all().order_by('event__id', 'date')
    ct = Term.current_term()
    output = '{0}: {1}-- Submitted by: {2} \n'
    with open('../mislink_rolls' + right_now + '.txt', 'w') as f:
      for r in rolls:
        try:
          schedules = r.event.schedules.all()
          for s in schedules:
            if r.trainee.id not in s.trainees.values_list('id', flat=True):
              out('Trainee DNM: ', f)
              out(output.format(str(r.id), r, r.submitted_by), f)
              break
            else:
              if str(ct.term_week_of_date(r.date)) not in s.weeks:
                out('Wrong Week: ', f)
                out(output.format(str(r.id), r, r.submitted_by), f)
                break
        except Exception as e:
          out(output.format(str(r.id), e, r.submitted_by), f)

  def _ghost_rolls(self):
    # Pull all rolls that have a present status with no leavslips attached
    right_now = datetime.now().strftime("%m%d%Y_%H%M%S")
    rolls = Roll.objects.filter(status='P').order_by('date')
    output = '{0}: {1}-- Submitted by: {2} \n'
    output2 = 'For {0}: Possible Slip: {1} [ID: {2}]\n'

    def find_possible_slips(roll):
      # check to see if there's a leaveslip submitted by the trainee for other rolls or events on the date that this roll takes place
      return roll.trainee.individualslips.filter(rolls__date__in=[roll.date])

    with open('../ghost_rolls' + right_now + '.txt', 'w') as f:
      for r in rolls:
        try:
          slips = r.leaveslips.all()
          if slips.count() == 0:
            out(output.format(r.id, r, r.submitted_by), f)
            for s in find_possible_slips(r):
              out(output2.format(r.id, s, s.id), f)
        except Exception as e:
          out(output.format(r.id, e, r.submitted_by), f)

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
    #self._mislink_rolls()
    print('* Pulling "present" Rolls with no leavslips attached...')
    self._ghost_rolls()
    print('* Pulling leaveslips with rolls that do not belong to submitting trainee')
    #self._mislink_leaveslips()
