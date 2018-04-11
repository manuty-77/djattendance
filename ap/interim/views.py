from django.views.generic.edit import UpdateView

from aputils.trainee_utils import trainee_from_user
from interim.models import InterimIntentions, InterimItinerary, InterimIntentionsAdmin
from interim.forms import InterimIntentionsForm, InterimItineraryForm, InterimIntentionsAdminForm
from terms.models import Term

from braces.views import GroupRequiredMixin

from dateutil import parser
from datetime import datetime, timedelta

class InterimIntentionsView(UpdateView):
  model = InterimIntentions
  template_name = 'interim/interim_intentions.html'
  form_class = InterimIntentionsForm

  def get_object(self, queryset=None):
    admin, created = InterimIntentionsAdmin.objects.get_or_create(term=Term.current_term())
    int_int, created = InterimIntentions.objects.get_or_create(trainee=trainee_from_user(self.request.user), admin=admin)
    return int_int

  def form_valid(self, form):
    self.update_interim_itinerary(interim_intentions=self.get_object(), data=self.request.POST.copy())
    return super(InterimIntentionsView, self).form_valid(form)

  def update_interim_itinerary(self, interim_intentions, data):
    start_list = data.pop('start')
    end_list = data.pop('end')
    commments_list = data.pop('comments')
    InterimItinerary.objects.filter(interim_intentions=interim_intentions).delete()

    for index in range(len(start_list)):
      itin = InterimItinerary()
      itin.interim_intentions = interim_intentions
      itin.start = parser.parse(start_list[index])
      itin.end = parser.parse(end_list[index])
      itin.comments = commments_list[index]
      itin.save()

  def get_context_data(self, **kwargs):
    ctx = super(InterimIntentionsView, self).get_context_data(**kwargs)
    admin, created = InterimIntentionsAdmin.objects.get_or_create(term=Term.current_term())
    interim_itineraries_forms = []
    interim_itineraries = InterimItinerary.objects.filter(interim_intentions=self.get_object())
    if interim_itineraries.count() == 0:
      interim_itineraries_forms.append(InterimItineraryForm())
    else:
      for itin in InterimItinerary.objects.filter(interim_intentions=self.get_object()):
        interim_itineraries_forms.append(InterimItineraryForm(instance=itin))
    ctx['button_label'] = 'Submit'
    ctx['page_title'] = 'Interim Intentions'
    ctx['itinerary_forms'] = interim_itineraries_forms
    ctx['interim_start'] = Term.current_term().end + timedelta(days=1)
    ctx['admin'] = admin

    return ctx


class InterimIntentionsAdminView(UpdateView, GroupRequiredMixin):
  model = InterimIntentionsAdmin
  form_class = InterimIntentionsAdminForm
  template_name = 'interim/interim_intentions_admin.html'
  group_required = ['training_assistant']

  def get_object(self, queryset=None):
    obj, created = self.model.objects.get_or_create(term=Term.current_term())
    return obj

  def get(self, request, *args, **kwargs):
    self.object = self.get_object()
    return super(InterimIntentionsAdminView, self).get(request, *args, **kwargs)

  def post(self, request, *args, **kwargs):
    self.object = self.get_object()
    return super(InterimIntentionsAdminView, self).post(request, *args, **kwargs)

  def form_valid(self, form):
    return super(InterimIntentionsAdminView, self).form_valid(form)

  def get_context_data(self, **kwargs):
    ctx = super(InterimIntentionsAdminView, self).get_context_data(**kwargs)
    ctx['page_title'] = "Interim Intentions Admin"
    ctx['button_label'] = 'Save'
    return ctx
