from django.conf.urls import url
from reports import views

urlpatterns = [
  url(r'^$', views.ReportCreateView.as_view(), name='generate-reports'),
  url(r'generated-report/$', views.GeneratedReport.as_view(), name='generated-report')
  
]