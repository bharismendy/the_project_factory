from django.conf.urls import include, url
from . import views
urlpatterns = [
    url('^new', views.projet_new,name="project/new"),
    url('^list/\Z', views.projet_list, name='project/list'),
    url(r'^list_author/(?P<auteur>.+?)/$', views.projet_list_specific, name='project/list_author'),
    url(r'^project_view/(?P<id_projet>.+?)/$', views.projet_display, name='project/project_view'),
]
