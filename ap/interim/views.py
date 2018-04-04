from django.views.generic.edit import UpdateView

from aputils.trainee_utils import trainee_from_user
from interim.models import InterimIntentions, InterimItinerary
from interim.forms import InterimIntentionsForm, InterimItineraryForm
from terms.models import Term

from dateutil import parser


class InterimIntentionsView(UpdateView):
  model = InterimIntentions
  template_name = 'interim/interim_intentions.html'
  form_class = InterimIntentionsForm

  def get_object(self, queryset=None):
    term = Term.current_term()
    int_int, created = InterimIntentions.objects.get_or_create(trainee=trainee_from_user(self.request.user), term=term)
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
    ctx['button_label'] = 'Submit'
    ctx['page_title'] = 'Interim Intentions'
    interim_itineraries_forms = []
    interim_itineraries = InterimItinerary.objects.filter(interim_intentions=self.get_object())
    if interim_itineraries.count() == 0:
      interim_itineraries_forms.append(InterimItineraryForm())
    else:
      for itin in InterimItinerary.objects.filter(interim_intentions=self.get_object()):
        interim_itineraries_forms.append(InterimItineraryForm(instance=itin))
    ctx['itinerary_forms'] = interim_itineraries_forms
    return ctx
