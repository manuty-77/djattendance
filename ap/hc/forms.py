from django import forms
from accounts.models import Trainee
from houses.models import House
from .models import HCSurvey, HCRecommendation, HCGeneralComment, HCTraineeComment


class HCSurveyForm(forms.ModelForm):
  def __init__(self, *args, **kwargs):
    super(HCSurveyForm, self).__init__(*args, **kwargs)

  class Meta:
    model = HCSurvey
    fields = ['house', ]


class HCGeneralCommentForm(forms.ModelForm):
  def __init__(self, *args, **kwargs):
    super(HCGeneralCommentForm, self).__init__(*args, **kwargs)

  class Meta:
    model = HCGeneralComment
    exclude = ['hc_survey', ]


class HCTraineeCommentForm(forms.ModelForm):
  def __init__(self, *args, **kwargs):
    super(HCTraineeCommentForm, self).__init__(*args, **kwargs)

  class Meta:
    model = HCTraineeComment
    exclude = ['hc_survey', ]


class HCRecommendationForm(forms.ModelForm):
  def __init__(self, *args, **kwargs):
    user = kwargs.pop('user')
    super(HCRecommendationForm, self).__init__(*args, **kwargs)
    house = House.objects.filter(id=user.house.id)
    self.fields['house'].queryset = house
    self.fields['hc'].queryset = Trainee.objects.filter(id=user.id)
    self.fields['choice'].queryset = Trainee.objects.filter(house=house).exclude(id=user.id)

  class Meta:
    model = HCRecommendation
    fields = '__all__'
