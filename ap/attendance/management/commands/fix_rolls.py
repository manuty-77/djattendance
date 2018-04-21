from django.core.management.base import BaseCommand
from django.contrib.auth.models import Group
from accounts.models import *
from attendance.models import Roll
from schedules.models import Event
from terms.models import Term
from datetime import datetime
from leaveslips.models import IndividualSlip
from django.db.models import Q

import sys
from contextlib import contextmanager
from django.core.exceptions import ObjectDoesNotExist, MultipleObjectsReturned


@contextmanager
def stdout_redirected(new_stdout):
  save_stdout = sys.stdout
  sys.stdout = new_stdout
  try:
    yield None
  finally:
    sys.stdout = save_stdout


def open_file(filename):
  def a_wrapper(func):
    def another_wrapper(self):
      with open(filename, "w") as f:
        with stdout_redirected(f):
          func(self)
    return another_wrapper
  return a_wrapper


RIGHT_NOW = datetime.now().strftime("%m%d%Y_%H%M%S")


class Command(BaseCommand):
  # to use: python ap/manage.py data_check_rolls --settings=ap.settings.dev
  def add_arguments(self, parser):
    parser.add_argument(  # --mr 1
        '--mr',
        dest='mislink_rolls',
        help='Pull rolls with a mislink in schedules',
    )
    parser.add_argument(  # --gr 1
        '--gr',
        dest='ghost_rolls',
        help='Pull present rolls with no leave slips attached',
    )
    parser.add_argument(  # --ml 1
        '--ml',
        dest='mislink_slips',
        help='Pull all slips with mislink in rolls',
    )
    parser.add_argument(  # --du 1
        '--du',
        dest='invalid_duplicates',
        help='Pulls all duplicate rolls that are invalid',
    )

  file_name = '../mislink_rolls' + RIGHT_NOW + '.txt'

  # @open_file(file_name)
  def _mislink_rolls(self):
    # Pulls all rolls that has a mislink, the event that the rolls points to does not exist in the trainee's active schedule
    print RIGHT_NOW
    rolls = Roll.objects.all().order_by('event__id', 'date')
    ct = Term.current_term()
    output = '{0}: {1}-- Submitted by: {2}\n'
    output2 = 'For Roll {0}: Possible Event: {1} [ID: {2}]\n'

    # stats
    bad_rolls = []
    error_rolls = []
    no_sched = 0
    wrong_elective = 0
    crc = 0
    yp_lb = 0
    yp_irv = 0
    rolls_to_fix = {}  # {'roll_id': [event_id, event_id], ...}

    def find_possible_events(roll):
      # pulls possible events that the roll should be attached to by looking at the atached event's start and end time or name or event type
      start = roll.event.start
      end = roll.event.end
      today = datetime.now().date()
      mid = datetime.combine(today, start) + (datetime.combine(today, end) - datetime.combine(today, start)) / 2

      evs = []
      s_priority = 0
      for s in roll.trainee.schedules.all().exclude(name='Generic Group Events'):
        if s.active_in_week(ct.term_week_of_date(roll.date)):
          for ev in s.events.filter(weekday=roll.event.weekday).exclude(~Q(day=None)):
            if datetime.combine(today, ev.start) < mid and datetime.combine(today, ev.end) > mid and s.priority > s_priority:
              s_priority = s.priority
              evs.append(ev)

        s_priority = 0
      return evs

    def fix_rolls(rolls_to_fix):
      output = 'Fixed Roll {0}: {1} From *{2} [ID: {3}]* to *{4} [ID: {5}]*\n\n'
      fixed = 0
      for r, evs in rolls_to_fix.iteritems():
        out = []
        if len(evs) == 1:
          roll = Roll.objects.get(id=r)
          out.append(str(r))
          out.append(str(roll))
          out.append(str(roll.event))
          out.append(str(roll.event.id))
          e = Event.objects.get(id=evs[0])
          roll.event = e
          out.append(str(e))
          out.append(str(e.id))
          roll.save()
          print output.format(*out)
          fixed += 1
      return fixed

    for r in rolls:
      try:
        schedules = r.event.schedules.all()
        roll_week = ct.term_week_of_date(r.date)
        good = False
        # if roll is not associated with a schedule
        if schedules.count() == 0:
          no_sched += 1
          print 'NO SCHED, so '
          pass
        # if so, check each schedule
        else:
          for s in schedules:
            # is roll's trainee in that schedule ?
            if r.trainee.id not in s.trainees.values_list('id', flat=True):
              continue
            # if so, is the roll in an active schedule ?
            elif s.active_in_week(roll_week) and (str(roll_week) not in s.weeks):
              print 'Wrong Week: '
              print output.format(str(r.id), r, r.submitted_by)
            # if so, it's a good roll
            else:
              good = True
        if not good:
          bad_rolls.append(r)
          print 'Trainee DNM: '
          print output.format(str(r.id), r, r.submitted_by)
          if r.event.name in ["Greek I", "Greek II", "Character", "German I", "German II", "Greek/ Character", "Character Study, Character for Commuters"]:
            wrong_elective += 1
          elif r.trainee.team.code == "CRC":
            crc += 1
          elif r.trainee.team.code == "YP-LB":
            yp_lb += 1
          elif r.trainee.team.code == "YP-IRV":
            yp_irv += 1
          if r.event.name not in ["Greek I", "Greek II", "Character", "German I", "German II", "Greek/ Character", "Character Study, Character for Commuters"]:
            rolls_to_fix[r.id] = []
            for ev in find_possible_events(r):
              rolls_to_fix[r.id].append(ev.id)
              print output2.format(r.id, ev, ev.id)
              print '\n'
      except Exception as e:
        error_rolls.append(r)
        print output.format(str(r.id), e, r.submitted_by)
    print 'bad rolls: ' + str(len(bad_rolls)) + '\n'
    print 'Due to no schedules for the roll: ' + str(no_sched) + '\n'
    print 'Elective related (Gk, Char, Ger): ' + str(wrong_elective) + '\n'
    print 'Cerritos College Related: ' + str(crc) + '\n'
    print 'YP-LB Related: ' + str(yp_lb) + '\n'
    print 'YP-IRV Related: ' + str(yp_irv) + '\n'
    print 'errors: ' + str(len(error_rolls)) + '\n'
    print '--------------- Fixing Rolls -------------'
    fixed_rolls = fix_rolls(rolls_to_fix)
    print 'Fixed Rolls: ' + str(fixed_rolls) + '\n'
    print '--------------- Error Rolls -------------'
    for er in error_rolls:
      print str(er.id) + ' ' + str(er.trainee) + ' ' + str(er.event) + ' ' + str(er.date) + ' ' + str(er.submitted_by) + ' ' + str(er.status) + str(er.last_modified) + ' '

  file_name = '../ghost_rolls' + RIGHT_NOW + '.txt'

  # @open_file(file_name)
  def _ghost_rolls(self):
    print RIGHT_NOW
    # Pull all rolls that have a present status with no leave slips attached
    rolls = Roll.objects.filter(status='P').order_by('date')
    output = '{0}: {1}-- Submitted by: {2}\n'
    output2 = 'For Roll {0}: Possible Slip: {1} [ID: {2}]\n'
    ghost_rolls = []

    def find_possible_slips(roll):
      # check to see if there's a leaveslip submitted by the trainee for other rolls or events on the date that this roll takes place
      return roll.trainee.individualslips.filter(rolls__date__in=[roll.date])

    for r in rolls:
      try:
        slips = r.leaveslips.all()
        if slips.count() == 0:
          ghost_rolls.append(r)
          print output.format(r.id, r, r.submitted_by)
          for s in find_possible_slips(r):
            print output2.format(r.id, s, s.id)
            print '\n'
      except Exception as e:
        print output.format(r.id, e, r.submitted_by)
    print 'ghost rolls: ' + str(len(ghost_rolls)) + '\n'

  file_name = '../mislink_leaveslips' + RIGHT_NOW + '.txt'

  # @open_file(file_name)
  def _mislink_leaveslips(self):
    print RIGHT_NOW
    # Pull all leaveslips submitted by trainee X and has rolls not for trainee X
    output = '[{0} - {1}]: [{2} - {3}]\n'
    output2 = 'For Slip {0}: Possible Roll: {1} [ID: {2}] By: {3}\n'
    bad_slips = []
    slips_to_fix = {}  # {'slip_id': [{'rm': roll_id, 'add': ['roll_id']}], ...}

    def find_possible_rolls(roll, slip):
      # finds possible rolls for trainee X that matches the attached roll
      return Roll.objects.filter(event=roll.event, date=roll.date, trainee=slip.trainee)

    def resolve_rolls(roll1_id, roll2_id):
      r1 = Roll.objects.get(id=roll1_id)
      r2 = Roll.objects.get(id=roll2_id)
      resolved = False
      good_roll = None
      if (r1.trainee == r2.trainee) and (r1.event == r2.event) and (r1.date and r2.date) and (r1.status == 'P' or r2.status == 'P'):
        trainee = r1.trainee
        if not trainee.self_attendance:
          for r in [r1, r2]:
            if (r.submitted_by == trainee) and (r.status == 'P'):
              print 'Roll: ' + str(r.event) + ' ' + str(r.date) + ' last modified: ' + str(r.last_modified) + ' deleted :)'
              r.delete()
            else:
              good_roll = r
              resolved = True
      return good_roll, resolved

    def fix_slips(slips_to_fix):
      output = 'Fixed Slip {0}: {1} From *{2} [ID: {3}]* to *{4} [ID: {5}]*\n\n'
      fixed = 0
      for s, to_do in slips_to_fix.iteritems():
        out = []
        if len(to_do) > 0:
          for d in to_do:
            new_roll = None
            if len(d['add']) == 1:
              new_roll = Roll.objects.get(id=d['add'][0])
            if len(d['add']) == 2:
              rr, resolved = resolve_rolls(d['add'][0], d['add'][1])
              if resolved:
                new_roll = Roll.objects.get(id=rr.id)
            if new_roll is not None:
              try:
                r = Roll.objects.get(id=d['rm'])
                out.append(str(s))
                slip = IndividualSlip.objects.get(id=s)
                out.append(str(slip))
                out.append(str(r))
                out.append(str(r.id))
                slip.rolls.remove(r)
                new_roll = Roll.objects.get(id=d['add'][0])
                out.append(str(new_roll))
                out.append(str(new_roll.id))
                slip.rolls.add(new_roll)
                slip.save()
                print output.format(*out)
                fixed += 1
              except Exception as e:
                print 'Tried to fix: ' + str(slip.id) + ' roll: ' + str(d['rm'])
                print str(e)
      return fixed

    for slip in IndividualSlip.objects.all():
      try:
        slips_to_fix[slip.id] = []
        for roll in slip.rolls.all():
          if slip.trainee.id != roll.trainee.id:
            temp_prs = []
            bad_slips.append(slip)
            print output.format(slip.id, slip, roll.id, roll)
            for pr in find_possible_rolls(roll, slip):
              temp_prs.append(pr.id)
              print output2.format(slip.id, pr, pr.id, pr.submitted_by)
              print '\n'
            slips_to_fix[slip.id].append({'rm': roll.id, 'add': temp_prs})
      except Exception as e:
        print output.format(slip, '!', e, '!')
    print 'bad slips: ' + str(len(bad_slips)) + '\n'
    print '--------------- Fixing Leave Slips -------------'
    fixed_slips = fix_slips(slips_to_fix)delete_dummy
    print 'Fixed Slips: ' + str(fixed_slips) + '\n'

  # @open_file(file_name)
  def _invalid_duplicatrolls(self):
    print RIGHT_NOW
    AMs = User.objects.filter(groups__name='attendance_monitors')

    output_roll = "Roll ID {0} {1} submitted by {2}"
    roll_delete = "Roll ID {0} {1} submitted by {2} deleted"

    dup_rolls_count = 0
    trainees = 0
    fixed = 0
    not_twos = 0

    def fix_invalid_duplicates(qs):
      # for r in qs:
      #   print output_roll.format(r.id, r, r.submitted_by)

      if qs.count() == 2:

        r1 = qs[0]
        r2 = qs[1]

        if r1.status==r2.status and r1.submitted_by==r2.submitted_by and not r1.leaveslips.all().exists() and not r2.leaveslips.all().exists():
          print "both rolls are identical"
          print roll_delete.format(r1.id, r1, r1.submitted_by)
          Roll.objects.get(pk=r1.id).delete()
          return 1

        try:
          r = qs.get(status='P')
          other_roll = qs.exclude(id=r.id).first()
          if r.status == 'P':

            if r.leaveslips.all():
              for ind_ls in r.leaveslips.all():
                ind_ls.rolls.remove(r)
                ind_ls.rolls.add(other_roll)
                ind_ls.save()

            print roll_delete.format(r.id, r, r.submitted_by)
            print "move non-present roll onto leaveslip then deleting present roll"
            Roll.objects.get(pk=r.id).delete()
            return 1
          return 0

        except MultipleObjectsReturned:
          print "Multiple Present rolls with leaveslips attached"

          return 0

        except ObjectDoesNotExist:
          r = qs.latest('last_modified')
          older_roll = qs.exclude(id=r.id).first()

          if older_roll.submitted_by and r.submitted_by and r.status == older_roll.status:
            r_ls = r.leaveslips.all()
            or_ls = older_roll.leaveslips.all()

            if r_ls.exists() and not or_ls.exists():
              print roll_delete.format(older_roll.id, older_roll, older_roll.submitted_by)
              print "identical roll and deleting rolls that doesn't have leaveslip"
              Roll.objects.get(pk=older_roll.id).delete()
              return 1

            elif not r_ls.exists() and not or_ls.exists():
              print roll_delete.format(older_roll.id, older_roll, older_roll.submitted_by)
              print "identical roll both rolls don't have leaveslips, deleting the older one"
              Roll.objects.get(pk=older_roll.id).delete()
              return 1

            elif not r_ls.exists() and or_ls.exists():
              for ind_ls in or_ls:
                ind_ls.rolls.remove(older_roll)
                ind_ls.rolls.add(r)
                ind_ls.save()

              print roll_delete.format(older_roll.id, older_roll, older_roll.submitted_by)
              print "identical roll and deleting rolls that doesn't have leaveslip"
              Roll.objects.get(pk=older_roll.id).delete()
              return 1

            elif r_ls.exists() and or_ls.exists():
              print "both rolls have leaveslips attached, do nothing"
              return 0

          return 0

        return 0

      if qs.count() == 3:
        newest = qs.latest('last_modified')        
        if newest.submitted_by in AMs:
          roll_withslips = qs.filter(~Q(leaveslips=None))
          if roll_withslips.count() == 1:
            roll = roll_withslips.first()
            slips = roll.leaveslips.all()
            for s in slips:
              s.rolls.remove(roll)
              s.rolls.add(newest)
              s.save()

            n_qs = qs.exclude(id=newest.id)
            for r in n_qs:
              print roll_delete.format(r.id, r, r.submitted_by)
              Roll.objects.get(pk=r.id).delete()
            print "three rolls, newest one is submitted by an attendance monitor and one of the rolls has a leaveslip. attached the newest one to the leaveslip and deleted the other two"

            return 1


      return 0

    for t in Trainee.objects.all().order_by('lastname', 'firstname'):
      invalid_duplicates = False
      duplicate_rolls = []
      trainee_rolls = Roll.objects.filter(trainee=t).order_by('date', 'event').distinct('date', 'event')
      for roll in trainee_rolls:
        dup = Roll.objects.filter(trainee=t, event=roll.event, date=roll.date).order_by('last_modified')
        
        if dup.count() == 2 and not t.self_attendance:
          invalid_duplicates = True
          duplicate_rolls.append(dup)

        elif dup.count() > 2:
          invalid_duplicates = True
          duplicate_rolls.append(dup)

      if invalid_duplicates:
        trainees += 1
        print t.full_name2
        for qs in duplicate_rolls:
          dup_rolls_count += 1
          if len(qs) == 2:
            val = fix_invalid_duplicates(qs)
            fixed += val

          elif len(qs) > 2:
            not_twos +=1
            val = fix_invalid_duplicates(qs)
            fixed += val

        print '\n'

    print "Trainees with dupliate rolls", trainees
    print "Total duplicate rolls", dup_rolls_count
    print "Not two", not_twos
    print "Fixed rolls", fixed

  def handle(self, *args, **options):
    allcmd = False
    if all(options[x] is None for x in ['mislink_rolls', 'ghost_rolls', 'mislink_slips', 'invalid_duplicates']):
      allcmd = True
    if allcmd or options['mislink_rolls']:
      print('* Pulling Rolls with mislinked Trainee...')
      self._mislink_rolls()
    if allcmd or options['ghost_rolls']:
      print('* Pulling "present" Rolls with no leavslips attached...')
      self._ghost_rolls()
    if allcmd or options['mislink_slips']:
      print('* Pulling leaveslips with rolls that do not belong to submitting trainee')
      self._mislink_leaveslips()
    if allcmd or options['invalid_duplicates']:
      print('* Pulling all rolls that have an invalid duplicate')
      self._invalid_duplicatrolls()

