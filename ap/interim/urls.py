from django.conf.urls import url
from . import views

urlpatterns = [
  url(r'^interim_intentions$', views.InterimIntentionsView.as_view(), name='interim_intentions'),
]
