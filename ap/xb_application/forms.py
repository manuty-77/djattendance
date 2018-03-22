from django import forms
from .models import XBApplication


class XBApplicationForm(forms.ModelForm):
  def __init__(self, *args, **kwargs):
    super(XBApplicationForm, self).__init__(*args, **kwargs)

  class Meta:
    model = XBApplication
    exclude = ['trainee', 'submitted', 'date_submitted', 'last_updated']
