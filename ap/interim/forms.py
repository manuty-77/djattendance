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
    super(InterimIntentionsForm, self).__init__(*args, **kwargs)
    self.fields['cell_phone'].label = 'Cell Phone'
    self.fields['email'].label = 'E-mail'
    self.fields['home_phone'].label = 'Home Phone'
    self.fields['home_locality'].label = 'Home Locality'
    self.fields['home_address'].label = 'Home Address'
    self.fields['home_city'].label = 'City'
    self.fields['home_state'].label = 'State'
    self.fields['home_zip'].label = 'Zip'
    self.fields['intent'].label = 'Intent to Return'

  class Meta:
    model = InterimIntentions
    fields = ["cell_phone", "email", "home_phone", "home_locality", "home_address", "home_city", "home_state", "home_zip", "intent"]
    widgets = {
      "intent": forms.RadioSelect,
    }
