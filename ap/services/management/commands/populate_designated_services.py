from django.core.management.base import BaseCommand
from accounts.models import Trainee
from services.models.week_schedule import WeekSchedule
from services.models.service import Service, Category, ServiceSlot
from services.models.seasonal_service_schedule import SeasonalServiceSchedule
from services.models.workergroup import WorkerGroup
from services.models.assignment import Assignment
from datetime import datetime, timedelta, time


# run populate_services before this script
class Command(BaseCommand):
  # to use: python ap/manage.py populate_designated_services --settings=ap.settings.dev
  def _create_services(self):
    scheduler = Trainee.objects.get(firstname="David", lastname="Ye")

    ws, created = WeekSchedule.objects.get_or_create(start=get_next_tuesday(), scheduler=scheduler)
    cat, created = Category.objects.get_or_create(name="Designated Service")
    sched = SeasonalServiceSchedule.objects.get(name='FTTA')
    serv, created = Service.objects.get_or_create(
        name="Attendance Project", code="AP", category=cat, schedule=sched,
        designated=True, weekday=5, start=time(12, 30), end=time(16)
    )
    wg = WorkerGroup.objects.get(name='Trainees')
    sl, created = ServiceSlot.objects.get_or_create(name="Attendance Project", service=serv, worker_group=wg)
    trainee = Trainee.objects.get(lastname="Salamanca")
    assign, created = Assignment.objects.get_or_create(week_schedule=ws, service=serv, service_slot=sl)
    assign.workers.add(trainee.worker)
    assign.save()

  def handle(self, *args, **options):
    self._create_services()


def get_next_tuesday():
  today = datetime.now.date()
  t = timedelta((12 - today.weekday()) % 7)  # Mon-0, Sun-6
  return today + t
