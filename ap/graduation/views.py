# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.views.generic.edit import UpdateView
from django.views.generic import ListView
from django.db.models import Sum
from django.template.defaultfilters import title

from terms.models import Term
from graduation.models import *
from graduation.forms import *

from braces.views import GroupRequiredMixin

from datetime import datetime
from itertools import chain
from operator import attrgetter
from collections import OrderedDict

MODELS = [Testimony, Consideration, Website, Outline, Remembrance, Misc]


class CreateUpdateView(UpdateView):
  template_name = 'graduation/graduation_form.html'

  def get_object(self, queryset=None):
    grad_admin, created = GradAdmin.objects.get_or_create(term=Term.current_term())
    obj, created = self.model.objects.get_or_create(trainee=self.request.user, grad_admin=grad_admin)
    return obj

  def get(self, request, *args, **kwargs):
    self.object = self.get_object()
    return super(CreateUpdateView, self).get(request, *args, **kwargs)

  def post(self, request, *args, **kwargs):
    self.object = self.get_object()
    return super(CreateUpdateView, self).post(request, *args, **kwargs)

  def form_valid(self, form):
    return super(CreateUpdateView, self).form_valid(form)

  def get_context_data(self, **kwargs):
    ctx = super(CreateUpdateView, self).get_context_data(**kwargs)
    today = datetime.now().date()
    if self.object.show_status == 'SHOW' or today > self.object.due_date:
      ctx['read_only'] = True
    ctx['page_title'] = self.object.name_of_model
    ctx['button_label'] = 'Save'
    return ctx


class TestimonyView(CreateUpdateView):
  model = Testimony
  form_class = TestimonyForm
  template_name = 'graduation/testimony.html'


class ConsiderationView(CreateUpdateView):
  model = Consideration
  form_class = ConsiderationForm
  template_name = 'graduation/consideration.html'


class WebsiteView(CreateUpdateView):
  model = Website
  form_class = WebsiteForm


class OutlineView(CreateUpdateView):
  model = Outline
  form_class = OutlineForm
  template_name = 'graduation/outline.html'


class RemembranceView(CreateUpdateView):
  model = Remembrance
  form_class = RemembranceForm
  template_name = 'graduation/remembrance.html'


class MiscView(CreateUpdateView):
  model = Misc
  form_class = MiscForm
  template_name = 'graduation/misc.html'

  def get_context_data(self, **kwargs):
    ctx = super(MiscView, self).get_context_data(**kwargs)
    ctx['page_title'] = 'Grad Invites & DVDs'

    return ctx


class GradAdminView(UpdateView, GroupRequiredMixin):
  model = GradAdmin
  form_class = GradAdminForm
  template_name = 'graduation/grad_admin.html'
  group_required = ['training_assistant', 'grad_committee']

  def get_object(self, queryset=None):
    obj, created = self.model.objects.get_or_create(term=Term.current_term())
    return obj

  def get(self, request, *args, **kwargs):
    self.object = self.get_object()
    return super(GradAdminView, self).get(request, *args, **kwargs)

  def post(self, request, *args, **kwargs):
    self.object = self.get_object()
    return super(GradAdminView, self).post(request, *args, **kwargs)

  def form_valid(self, form):
    return super(GradAdminView, self).form_valid(form)

  def get_statistics(self):
    term = Term.current_term()
    return OrderedDict([(m.__name__ + ' responses', m.responded_number(term)) for m in MODELS])

  def get_context_data(self, **kwargs):
    ctx = super(GradAdminView, self).get_context_data(**kwargs)
    ctx['stats'] = self.get_statistics()
    ctx['page_title'] = "Grad Admin"
    ctx['button_label'] = 'Save'
    ctx['4th_count'] = Misc.objects.filter(grad_admin=GradAdmin.objects.get(term=Term.objects.filter(current=True).first()), trainee__in=Trainee.objects.filter(current_term=4)).count()
    return ctx


class ReportView(ListView):

  def get_context_data(self, **kwargs):
    context = super(ReportView, self).get_context_data(**kwargs)

    context['data'] = self.model.objects.all()
    context['title'] = title(self.model._meta.verbose_name + ' Report')

    return context

class TestimonyReport(ReportView):
  model = Testimony
  template_name = 'graduation/testimony_report.html'


class ConsiderationReport(ReportView):
  model = Consideration
  template_name = 'graduation/consideration_report.html'


class WebsiteReport(ReportView):
  model = Website
  template_name = 'graduation/website_report.html'


class OutlineReport(ReportView):
  model = Outline
  template_name = 'graduation/outline_report.html'


class MiscReport(ReportView):
  model = Misc
  template_name = 'graduation/misc_report.html'

class RemembranceReport(ReportView):
  model = Remembrance
  template_name = 'graduation/rem_report.html'