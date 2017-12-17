from django.core.management.base import BaseCommand
from schedules.models import Event, Schedule
from accounts.models import Trainee
from terms.models import Term
from teams.models import Team
from aputils.models import QueryFilter
from django.db.models import Q


class Command(BaseCommand):
  def _create_schedule(self):

    # all trainees
    main_s = Schedule(name='Main', season='All', term=Term.current_term(), priority=1, import_to_next_term=True)
    main_s.save()

    main_s.events = Event.objects.filter(Q(type='H') | Q(type='M') | Q(class_type='MAIN'))
    main_s.trainees = Trainee.objects.all()
    main_s.save()

    # 1st year
    oneyear_s = Schedule(name='1st Year', season='All', term=Term.current_term(), priority=2, import_to_next_term=True)
    oneyear_s.save()

    oneyear_s.events = Event.objects.filter(class_type='1YR')
    oneyear_s.trainees = Trainee.objects.filter(current_term__lte=2)
    oneyear_s.save()

    # 2nd year
    twoyear_s = Schedule(name='2nd Year', season='All', term=Term.current_term(), priority=2)
    twoyear_s.save()

    twoyear_s.events = Event.objects.filter(class_type='2YR')
    twoyear_s.trainees = Trainee.objects.filter(current_term__gte=3)
    twoyear_s.save()

    # campus times
    for team in Team.objects.all():
      query = '{"team__id":%s}' % team.id
      qf = QueryFilter(name=team.name, query=query)
      qf.save()

      schedule = Schedule(
          name=team.name, season='All', term=Term.current_term(),
          priority=3, import_to_next_term=True, team_roll=team,
          query_filter=qf
      )
      schedule.save()
      schedule.events = Event.objects.filter(monitor='TM')
      schedule.trainees = Trainee.objects.filter(team=team)
      schedule.save()

  def handle(self, *args, **options):
    print("* Populating schedules...")
    self._create_schedule()
