# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models


class XBApplication(models.models):
  GENDER_CHOICES = (
      ('B', 'Brother'),
      ('S', 'Sister'),
  )

  TERM_CHOICES = (
      (1, 1),
      (2, 2),
      (3, 3),
      (4, 4)
  )

  BOOL_CHOICES = ((True, 'Yes'), (False, 'No'))

  MARITAL_CHOICES = (
      ('S', 'Single'),
      ('M', 'Married'),
      ('E', 'Engaged'),
      ('D', 'Divorced'),
  )

  CITIZENSHIP_CHOICES = (
      ('C', 'Citizenship'),
      ('R', 'Resident'),
      ('O', 'Other'),
  )

  ATTITUDE_CHOICES = (
      ('A', 'Agree'),
      ('D', 'Disagree'),
      ('B', 'Burdened'),
  )

  SUPPORT_CHOICES = (
      ('Y', 'Yourself'),
      ('C', 'Church'),
      ('F', 'Family'),
      ('O', 'Other'),
  )

  name = models.CharField(max_length=100, blank=True)

  gender = models.CharField(max_length=1, choices=GENDER_CHOICES, default=True)

  address = models.CharField(max_length=100, blank=True)

  city = models.CharField(max_length=100, blank=True)

  phone = models.CharField(max_length=30, blank=True)

  email = models.CharField(max_length=30, blank=True)

  term = models.IntegerField(max_length=1, blank=True)

  loans = models.BooleanField(choices=BOOL_CHOICES)

  sending_locality = models.CharField(max_length=100, blank=True)

  birthdate = models.DateField(blank=True, null=True)

  age = models.IntegerField(max_length=2, blank=True)

  state = models.CharField(max_length=30, blank=True)

  zip_code = models.IntegerField(max_length=10, blank=True)

  automobile = models.BooleanField(choices=BOOL_CHOICES)

  seats = models.IntegerField(max_length=2, blank=True)

  citizenship = models.CharField(max_length=30, blank=True)

  college1 = models.CharField(max_length=100, blank=True)

  major1 = models.CharField(max_length=100, blank=True)

  degree1 = models.CharField(max_length=100, blank=True)

  college2 = models.CharField(max_length=100, blank=True)

  major2 = models.CharField(max_length=100, blank=True)

  degree2 = models.CharField(max_length=100, blank=True)

  date_saved = models.DateField(blank=True)

  date_baptized = models.DateField(blank=True)

  first_church = models.CharField(max_length=150, blank=True)

  first_church_date = models.DateField(blank=True)

  ftta_service = models.CharField(max_length=300, blank=True)

  which_ftt = models.CharField(max_length=30, blank=True)

  grad_date = models.DateField(blank=True)

  marital = models.CharField(max_length=1, choices=MARITAL_CHOICES, blank=True)

  spouse_name = models.CharField(max_length=100, blank=True)

  spouse_occupation = models.CharField(max_length=150, blank=True)

  spouse_age = models.IntegerField(max_length=2, blank=True)

  date_marriage = models.DateField(blank=True)

  spouse_attitude = models.CharField(max_length=1, choices=ATTITUDE_CHOICES, blank=True)

  dependents = models.IntegerField(max_length=2)

  support = models.CharField(max_length=1, choices=SUPPORT_CHOICES, blank=True)

  other_info = models.CharField(max_length=500, blank=True)

  narrative = models.CharField(max_length=3000, blank=True)
