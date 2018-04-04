from django.views.generic.edit import UpdateView

from aputils.trainee_utils import trainee_from_user
from interim.models import InterimIntentions, InterimItenerary
from interim.forms import InterimIntentionsForm, InterimIteneraryForm
from terms.model import Term

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
    self.update_interim_itenerary(service_attendance=self.get_object(), data=self.request.POST.copy())
    return super(InterimIntentionsView, self).form_valid(form)

  def update_interim_itenerary(self, interim_intentions, data):
    start_list = data.pop('start')
    end_list = data.pop('end')
    commments_list = data.pop('comments')
    InterimItenerary.objects.filter(interim_intentions=interim_intentions).delete()

    for index in range(len(start_list)):
      iten = InterimItenerary()
      iten.interim_intentions = interim_intentions
      iten.start_datetime = parser.parse(start_list[index])
      iten.end_datetime = parser.parse(end_list[index])
      iten.task_performed = commments_list[index]
      iten.save()

  def get_context_data(self, **kwargs):
    ctx = super(InterimIntentionsView, self).get_context_data(**kwargs)
    ctx['button_label'] = 'Submit'
    ctx['page_title'] = 'Interim Intentions'
    interim_inteneraries_forms = []
    interim_inteneraries = InterimItenerary.objects.filter(interim_intentions=self.get_object())
    if interim_inteneraries.count() == 0:
      interim_inteneraries_forms.append(InterimIteneraryForm())
    else:
      for iten in InterimItenerary.objects.filter(interim_intentions=self.get_object()):
        interim_inteneraries_forms.append(InterimIteneraryForm(instance=iten))
    ctx['itenerary_forms'] = interim_inteneraries_forms
    return ctx
