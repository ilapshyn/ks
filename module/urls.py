from django.conf.urls import patterns, url

from module import views

urlpatterns = patterns('',
    url(r'^$', views.index, name='index'),
    url(r'^soft_mebli/', views.soft_mebli, name='soft_mebli'),
)
