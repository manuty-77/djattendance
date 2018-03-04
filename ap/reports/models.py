from django.db import models
from django.core.urlresolvers import reverse

from accounts.models import Trainee

"""
This class represents a generated attendance and/or exam report.
"""

class Report(models.Model):

  REPORT_TYPE = (
    ('ATTENDANCE', 'attendance'),
    ('EXAM', 'exam'),
    ('BOTH', 'both')
  )

  