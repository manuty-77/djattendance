from django import forms
#from django.forms import MultipleChoiceField

#from accounts.models import Trainee
#from accounts.widgets import TraineeSelect2MultipleInput

import datetime


class ReportGenerateForm(forms.Form):
  #training_class = ModelChoiceField(Class.objects.all(), empty_label=None)
  attendancePeriodStart = forms.DateTimeField(initial=datetime.date.today)
  attendancePeriodEnd = forms.DateTimeField(initial=datetime.date.today)
  Gender = forms.CharField(initial='M')
  Term = forms.IntegerField(initial='1')
  Category = forms.CharField(max_length=500)
  