from django.core.urlresolvers import reverse
from django.db import models
from accounts.models import Trainee
from terms.models import Term
from datetime import datetime, timedelta

""" graduation models.py

This module allows for administering and taking of graduation surveys, including survey
creation, editing, taking, and stats.

DATA MODELS:
  - Survey: Abstract model for surveys
  - GradAdmin: Allows admin to control all surveys
"""


class GradAdmin(models.Model):

  SHOW_CHOICES = (
      ('NO', 'No'),
      ('YES', 'Yes'),
      ('SHOW', 'Show only')
  )

  term = models.OneToOneField(Term, blank=True)

  # display status
  testimony_show_status = models.CharField(max_length=4, choices=SHOW_CHOICES, default='NO')
  consideration_show_status = models.CharField(max_length=4, choices=SHOW_CHOICES, default='NO')
  website_show_status = models.CharField(max_length=4, choices=SHOW_CHOICES, default='NO')
  outline_show_status = models.CharField(max_length=4, choices=SHOW_CHOICES, default='NO')
  remembrance_show_status = models.CharField(max_length=4, choices=SHOW_CHOICES, default='NO')
  misc_show_status = models.CharField(max_length=4, choices=SHOW_CHOICES, default='NO')

  # survey due date
  testimony_due_date = models.DateField(blank=True, null=True)
  consideration_due_date = models.DateField(blank=True, null=True)
  website_due_date = models.DateField(blank=True, null=True)
  outline_due_date = models.DateField(blank=True, null=True)
  remembrance_due_date = models.DateField(blank=True, null=True)
  misc_due_date = models.DateField(blank=True, null=True)

  # speaking trainees
  speaking_trainees = models.ManyToManyField(Trainee, blank=True)

  def __unicode__(self):
    return "[Graduation] %s" % (self.term)

  def get_due_date_of(self, survey_name):
    DUE_DATE_OF = {
        'Testimony': self.testimony_due_date,
        'Consideration': self.consideration_due_date,
        'Website': self.website_due_date,
        'Outline': self.outline_due_date,
        'Remembrance': self.remembrance_due_date,
        'Misc': self.misc_due_date,
    }
    return DUE_DATE_OF[survey_name]

  def get_show_status_of(self, survey_name):
    SHOW_STATUS_OF = {
        'Testimony': self.testimony_show_status,
        'Consideration': self.consideration_show_status,
        'Website': self.website_show_status,
        'Outline': self.outline_show_status,
        'Remembrance': self.remembrance_show_status,
        'Misc': self.misc_show_status,
    }
    return SHOW_STATUS_OF[survey_name]

  def get_absolute_url(self):
    return reverse('graduation:grad-admin')


class Survey(models.Model):

  SHOW_CHOICES = (
      ('NO', 'no'),
      ('YES', 'yes'),
      ('SHOW', 'show only')
  )

  # grad admin controls the survey
  grad_admin = models.ForeignKey(GradAdmin, null=True, on_delete=models.SET_NULL)

  # trainee filling out the survey
  trainee = models.ForeignKey(Trainee, null=True, on_delete=models.SET_NULL)

  @property
  def name(self):
    return self.__class__.__name__

  @property
  def due_date(self):
    d = self.grad_admin.get_due_date_of(self.name)
    if d:
      return d
    else:
      return datetime.now().date() + timedelta(days=1)

  @property
  def show_status(self):
    return self.grad_admin.get_show_status_of(self.name)

  def get_absolute_url(self):
    rev_url = 'graduation:' + self.name.lower() + '-view'
    return reverse(rev_url)

  @classmethod
  def responded_number(cls, term):
    qset = cls.objects.filter(grad_admin__term=term)
    return len(filter(lambda o: o.responded, qset))

  def __unicode__(self):
    return "[%s] %s - %s" % (self.name, self.due_date, self.show_status)

  class Meta:
    abstract = True


class Testimony(Survey):

  top_experience = models.TextField(null=True, max_length=300)
  encouragement = models.TextField(null=True, max_length=300)
  overarching_burden = models.TextField(null=True, max_length=250)
  highlights = models.TextField(null=True, max_length=150)

  @property
  def responded(self):
    if self.top_experience or self.encouragement or self.overarching_burden or self.highlights:
      return True
    else:
      return False


class Consideration(Survey):

  XB_CHOICES = (
      ('YES', 'Yes, I would like to go to FTTA-XB'),
      ('OPEN', 'Open and considering going to FTTA-XB'),
      ('NO', "No, it's not likely I will go to FTTA-XB"),
      ('OTHER', "Other"),
  )

  attend_XB = models.CharField(max_length=5, choices=XB_CHOICES, null=True)

  FELLOWSHIP_CHOICES = (
      ('YES', 'YES'),
      ('NO', 'NO'),
      ('OTHER', 'OTHER')
  )

  fellowshipped = models.CharField(max_length=5, choices=FELLOWSHIP_CHOICES, null=True)

  FINANCIAL_CHOICES = (
      ('FLWSHP', 'All finances have been fellowshipped and are taken care of'),
      ('PART', 'I may need to fellowship for help with part of the finances'),
      ('ALL', 'I may need to fellowship for help with all of the finances'),
      ('OTHER', 'Other')
  )
  financial = models.CharField(max_length=5, choices=FINANCIAL_CHOICES, null=True)

  consideration_plan = models.TextField(null=True, max_length=250)

  comments = models.TextField(null=True, max_length=150)

  @property
  def responded(self):
    if self.attend_XB or self.fellowshipped or self.financial or self.consideration_plan:
      return True
    else:
      return False


class Website(Survey):

  SCALE = ((1, 1), (2, 2), (3, 3), (4, 4), (5, 5))

  post_training_website = models.SmallIntegerField(choices=SCALE, null=True)

  reasons = models.TextField(null=True)

  features = models.TextField(null=True)

  FREQ = (
      ("NEVER", "Never"),
      ("MONTHLY", "1-2 times a month"),
      ("WEEKLY", "1-2 times a week"),
      ("OFTEN", "3-5 times a week"),
      ("DAILY", "Everyday")
  )

  frequency = models.CharField(max_length=7, choices=FREQ, null=True)

  doing = models.CharField(max_length=200, null=True)

  residence = models.CharField(max_length=50, null=True)

  email = models.CharField(max_length=50, null=True)

  phone_number = models.CharField(max_length=25, null=True)

  @property
  def responded(self):
    if self.post_training_website or self.reasons or self.features or self.frequency or self.doing or self.residence or self.email or self.phone_number:
      return True
    else:
      return False


class Outline(Survey):

  sections = models.CharField(max_length=50, null=True)

  OUTLINE_CHOICES = (
      ("TRUTH", "Speak on a truth point"),
      ("EXP", "Speak my experience")
  )
  participate = models.CharField(max_length=5, choices=OUTLINE_CHOICES, null=True)
  sentence = models.CharField(max_length=50, null=True)

  @property
  def responded(self):
    if self.sections or self.participate:
      return True
    else:
      return False


class Remembrance(Survey):

  remembrance_text = models.TextField(blank=True, null=True)
  remembrance_reference = models.TextField(blank=True, null=True)

  @property
  def responded(self):
    if self.remembrance_text or self.remembrance_text:
      return True
    else:
      return False


class Misc(Survey):

  grad_invitations = models.SmallIntegerField(blank=True, null=True)
  grad_dvd = models.SmallIntegerField(blank=True, null=True)

  @property
  def responded(self):
    if self.grad_invitations or self.grad_dvd:
      return True
    else:
      return False
