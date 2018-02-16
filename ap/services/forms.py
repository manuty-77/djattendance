from django import forms
from services.models.service_hours import ServiceRoll, ServiceAttendance
from aputils.widgets import DatetimePicker


class ServiceRollForm(forms.ModelForm):
  def __init__(self, *args, **kwargs):
    super(ServiceRollForm, self).__init__(*args, **kwargs)

  class Meta:
    model = ServiceRoll
    fields = ["start_datetime", "end_datetime", "task_performed", ]
    widgets = {
      "start_datetime": DatetimePicker(),
      "end_datetime": DatetimePicker(),
    }


class ServiceAttendanceForm(forms.ModelForm):
  def __init__(self, *args, **kwargs):
    super(ServiceAttendanceForm, self).__init__(*args, **kwargs)

  class Meta:
    model = ServiceAttendance
    fields = ["designated_service", "week", ]
