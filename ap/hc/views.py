from django.shortcuts import render, redirect, get_object_or_404
from django.views.generic.edit import CreateView, FormView, UpdateView, DeleteView
from django.core.urlresolvers import reverse, reverse_lazy
from django.http import HttpResponseRedirect
from django.contrib import messages
from django.db.models import Q

from accounts.models import Trainee
from .models import House, HCSurvey, HCGeneralComment, HCTraineeComment, HCRecommendation
from .forms import HCSurveyForm, HCGeneralCommentForm, HCTraineeCommentForm, HCRecommendationForm


def create_hc_survey(request):
  if request.method == 'POST':
    pass  # field validation, assign hcsurvey.id to comments.hcsurvey.id, save model, render new page
  else:
    hc_survey_form = HCSurveyForm(instance=HCSurvey())
    hc_survey_form.fields['house'].queryset = House.objects.filter(id=request.user.house.id)

    hc_gen_comment_form = HCGeneralCommentForm(instance=HCGeneralComment())

    residents = Trainee.objects.filter(house=request.user.house).exclude(id=request.user.id)
    trainee_form_tuples = []
    for index, trainee in enumerate(residents):
      hc_tr_comm_form = HCTraineeCommentForm(prefix=str(index), instance=HCTraineeComment())
      hc_tr_comm_form.fields['trainee'].queryset = Trainee.objects.filter(id=trainee.id)
      trainee_form_tuples.append(
        (trainee, hc_tr_comm_form)
      )

    ctx = {
      'hc_survey_form': hc_survey_form,
      'hc_gen_comment_form': hc_gen_comment_form,
      'trainee_form_tuples': trainee_form_tuples,
      'button_label': "Submit",
      'page_title': "HC Survey"
    }
    return render(request, 'hc/hc_survey.html', context=ctx)


class HCRecommendationCreate(CreateView):
  model = HCRecommendation
  template_name = 'hc/hc_recommendation.html'
  form_class = HCRecommendationForm

  def get_form_kwargs(self):
    kwargs = super(HCRecommendationCreate, self).get_form_kwargs()
    kwargs['user'] = self.request.user
    return kwargs

  def get_context_data(self, **kwargs):
    ctx = super(HCRecommendationCreate, self).get_context_data(**kwargs)
    ctx['button_label'] = 'Submit'
    ctx['page_title'] = 'HC Recommendation'
    return ctx
