from django.http import HttpResponse
from braces.views import LoginRequiredMixin, GroupRequiredMixin
from django.views.generic.edit import FormView
from django.views.generic.list import ListView
from django.core.urlresolvers import reverse_lazy
from django.shortcuts import render
from .forms import ReportGenerateForm
import datetime
from django.utils import timezone


class ReportCreateView(LoginRequiredMixin, GroupRequiredMixin, FormView):
  template_name = 'reports/reports.html'
  group_required = [u'training_assistant']

  success_url = reverse_lazy('reports:generate-reports')
  form_class = ReportGenerateForm

  def post(self, request, *args, **kwargs):
    data = request.POST
    print "Checking data..."
    print data
    print "checking request..."
    print request
    #context = super(ReportCreateView, self).get_context_data(**kwargs)
    return render(request, 'reports/reports.html', {'data': data})


class GeneratedReport(LoginRequiredMixin, GroupRequiredMixin, ListView):
  template_name = 'reports/generated_report.html'
  group_required = [u'training_assistant']

  def get_context_data(self, **kwargs):
    return {}

  def get_queryset(self):
    return {}




