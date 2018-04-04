from django import forms

from interim.models import InterimIntentions, InterimItinerary
from aputils.widgets import DatePicker


class InterimItineraryForm(forms.ModelForm):
  def __init__(self, *args, **kwargs):
    super(InterimItineraryForm, self).__init__(*args, **kwargs)
    self.fields['start'].required = True
    self.fields['end'].required = True

  class Meta:
    model = InterimItinerary
    fields = ["start", "end", "comments", ]
    widgets = {
      "start": DatePicker(),
      "end": DatePicker(),
    }


class InterimIntentionsForm(forms.ModelForm):
  def __init__(self, *args, **kwargs):
    # worker = kwargs.pop('worker')
    super(InterimIntentionsForm, self).__init__(*args, **kwargs)

  class Meta:
    model = InterimIntentions
    fields = ["cell_phone", "email", "home_phone", "home_locality", "home_address", "home_city", "home_state", "home_zip", "intent"]
