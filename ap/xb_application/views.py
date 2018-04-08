from datetime import datetime

from django.views.generic.edit import UpdateView
from django.views.generic import ListView

from .models import *
from .forms import XBApplicationForm
from aputils.trainee_utils import is_trainee, trainee_from_user
from terms.models import Term


class XBApplicationView(UpdateView):
  model = XBApplication
  form_class = XBApplicationForm
  template_name = 'xb_application/application_form.html'

  def get_object(self):
    # the post method would remove the foreign key link, so there's the need to do this to ensure the foreign key stays attached
    admin, created = XBAdmin.objects.get_or_create(term=Term.current_term())
    xbApp = XBApplication.objects.filter(trainee=self.request.user).first()
    if not xbApp:
      xbApp = XBApplication(trainee=self.request.user, xb_admin=admin)
    else:
      xbApp.xb_admin = admin
      xbApp.save()
    return xbApp

  def post(self, request, *args, **kwargs):
    self.object = self.get_object()
    if 'submit' in request.POST:
      self.object.submitted = True
    self.object.last_updated = datetime.now()
    self.object.date_submitted = self.object.last_updated    
    self.object.save()
    return super(XBApplicationView, self).post(request, *args, **kwargs)

  def form_valid(self, form):
    return super(XBApplicationView, self).form_valid(form)

  def get_context_data(self, **kwargs):
    ctx = super(XBApplicationView, self).get_context_data(**kwargs)
    self.object = self.get_object()
    ctx['submitted'] = self.object.submitted
    ctx['last_updated'] = self.object.last_updated
    ctx['page_title'] = 'FTTA-XB Application'
    ctx['term'] = Term.next_term()
    if self.object.xb_admin.xb_due_date:
      ctx['due_date'] = self.object.xb_admin.xb_due_date
    today = datetime.now().date()
    if self.object.xb_admin.xb_show_status == 'SHOW' or today > self.object.xb_admin.xb_due_date:
      ctx['read_only'] = True
    if not self.object.submitted:
      ctx['save_button'] = '<button type="submit" class="btn btn-primary btn-save">Save</button>'
      ctx['submit_button'] = '<button type="submit" class="btn btn-primary btn-save" name="submit">Submit</button>'
    return ctx

class XBReportView(ListView):
  model = XBApplication
  template_name = 'xb_application/xb_report.html'

  def get_queryset(self):
    return self.model.objects.all()

  def get_context_data(self, **kwargs):
    ctx = super(XBReportView, self).get_context_data(**kwargs)
    ctx['page_title'] = 'FTTA-XB Application Report List'
    return ctx

