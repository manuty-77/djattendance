from django.conf.urls import patterns, include, url
from django.contrib.auth.views import login, logout

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
import autofixture

admin.autodiscover()
autofixture.autodiscover()

urlpatterns = patterns('',
    url(r'^accounts/login/$', login, name='login'),
	url(r'^accounts/logout/$', logout),
    url(r'^$', 'ap.views.home', name='home'),
    url(r'^base_example/$', 'ap.views.base_example'),
    url(r'^grappelli/', include('grappelli.urls')), # grappelli URLS
    url(r'^admin/', include(admin.site.urls)), # admin site
    url(r'^adminactions/', include('adminactions.urls')), #django-adminactions pluggable app
    url(r'^accounts/', include ('accounts.urls')),
    url(r'^terms/', include('terms.urls', namespace="terms")),
    url(r'^dailybread/', include('dailybread.urls', namespace="dailybread")),
    url(r'^schedules/', include('schedules.urls', namespace="schedules")),
    url(r'^verse_parse/', include('verse_parse.urls', namespace="verse_parse")),
    url(r'^report_builder/', include('report_builder.urls')),
    url(r'^terms/', include('terms.urls', namespace="terms")),
    url(r'^absent_trainee_roster/', include('absent_trainee_roster.urls', namespace="absent_trainee_roster")),
    url(r'^select2/', include('django_select2.urls')),
    # Examples:
    # url(r'^$', 'ap.views.home', name='home'),
    # url(r'^ap/', include('ap.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),

    url(r'^syllabus/', include('syllabus.urls')),
    url(r'^lifestudies/', include('lifestudies.urls')),
)
