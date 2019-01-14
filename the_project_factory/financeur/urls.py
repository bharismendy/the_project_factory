from django.conf.urls import include, url
from . import views
urlpatterns = [
    url('^(?P<id_projet>.+?)/$', views.funds_project, name="funds/project"),
]
