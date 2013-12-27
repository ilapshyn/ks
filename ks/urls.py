from django.conf.urls import patterns, include, url
from django.contrib import admin


admin.autodiscover()

urlpatterns = patterns('',
    url(r'^ks/',       include('module.urls')),
    url(r'^admin/',    include(admin.site.urls)),
)
