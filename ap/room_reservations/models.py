from django.db import models
from django.core.urlresolvers import reverse

from rooms.models import Room
from accounts.models import User, Trainee, TrainingAssistant
from terms.models import Term

""" ROOM RESERVATIONS models.py

The ROOMS RESERVATIONS app represents reservations that are made for the various loations of the training. They are made by trainees or TA's and approved by TA's. Both trainees and TA's use the reservation schedule generated by this app.

Data Models:
  - RoomReservation: a reservation for a particular room at a given time.

"""

class RoomReservation(models.Model):

  RES_STATUS = (
    ('P', 'Pending'),
    ('A', 'Approved'),
    ('D', 'Denied'),
    ('F', 'Fellowship'),
  )

  RES_FREQ = (
    ('Once', 'Reserve Once'),
    ('Term', 'Reserve for the entire term'),
  )

  # Until Rooms Models is made use this

  RES_ROOMS = (
    ('MC', 'classroom'),
    ('NE209', 'NE209'),
    ('NE3', 'NE3'),
  )


  #trainee submitting the request
  trainee = models.ForeignKey(Trainee, related_name='%(class)ss')

  #time of submission
  submitted = models.DateTimeField(auto_now_add=True)

  #time of last update
  last_modified = models.DateTimeField(auto_now_add=True, null=True)

  #time of approved/denied
  finalized = models.DateTimeField(blank=True, null=True)

  #description of the group using the room
  group = models.CharField(max_length=10)

  #date requesting
  date = models.DateField()

  #start time
  start = models.TimeField()

  #end time
  end = models.TimeField()

  #room being requested
  #room = models.CharField(max_length=9, choices=RES_ROOMS)
  room = models.ForeignKey(Room)

  #size of group
  group_size = models.IntegerField(default=25)

  #frequency - once or recurring
  frequency = models.CharField(max_length=30, choices=RES_FREQ, default='O')

  #reservation approval status
  status = models.CharField(max_length=2, choices=RES_STATUS, default='P')

  #reason for reservation
  reason = models.CharField(max_length=100)

  def __init__(self, *args, **kwargs):
    super(RoomReservation, self).__init__(*args, **kwargs)
    self.old_status = self.status

  def create(self, force_insert=False, force_update=False):
    #records the datetime when reservation is approved or denied
    if(self.status =='D' or self.status == 'A') and (self.old_status == 'P'):
      self.finalized = datetime.now()
    super(RoomReservation, self).save(force_insert, force_update)
    self.old_status = self.status

  def __unicode__(self):
    return "[%s] %s - %s" % (self.submitted.strftime('%m/%d'), self.room, self.trainee)

  def get_absolute_url(self):
    return reverse('room_reservations:room-reservation-submit', kwargs={'pk':self.id})

  def get_update_url(self):
    return reverse('room_reservations:room-reservation-update', kwargs={'pk':self.id})
