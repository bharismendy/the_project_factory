from django.conf.urls import include, url
from . import views
urlpatterns = [
    url('^eval_project/(?P<id_projet>.+?)/$', views.eval_project, name="evaluate/project"),
]
