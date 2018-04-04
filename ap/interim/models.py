from django.core.urlresolvers import reverse
from django.db import models
from accounts.models import Trainee
from terms.models import Term

""" interim models.py


"""


class InterimIntentions(models.Model):
  INTENT_CHOICES = (
      ('R', 'Returning'),
      ('N', 'Graduating or not returning'),
      ('U', 'Unsure if I will return next term'),
  )

  trainee = models.ForeignKey(Trainee, null=True, on_delete=models.SET_NULL)

  term = models.ForeignKey(Term, null=True, blank=True, on_delete=models.SET_NULL)

  cell_phone = models.CharField(max_length=50, blank=True, default='555-555-5555')

  email = models.CharField(max_length=50, blank=True)

  home_phone = models.CharField(max_length=50, blank=True, default='555-555-5555')

  home_locality = models.CharField(max_length=50, blank=True)

  home_address = models.CharField(max_length=50, blank=True)

  home_city = models.CharField(max_length=50, blank=True)

  home_state = models.CharField(max_length=50, blank=True)

  home_zip = models.CharField(max_length=50, blank=True)

  intent = models.CharField(max_length=1, choices=INTENT_CHOICES, default="R")

  submitted = models.BooleanField(default=False)

  date_submitted = models.DateField(null=True, blank=True)

  last_updated = models.DateTimeField(null=True, blank=True)

  def __unicode__(self):
    return "[InterimIntentions] %s - %s" % (self.trainee.full_name, self.submitted)

  def get_absolute_url(self):
    return reverse('interim:interim_intentions')


class InterimItinerary(models.Model):
  interim_intentions = models.ForeignKey(InterimIntentions, null=True, on_delete=models.SET_NULL)

  start = models.DateField(null=True, blank=True)

  end = models.DateField(null=True, blank=True)

  comments = models.CharField(max_length=250, blank=True)

  def __unicode__(self):
    return "[InterimItinerary] - %s" % (self.interim_intentions.trainee.full_name)
