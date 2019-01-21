from django.conf.urls import include, url
from . import views
from projet.Feed import LatestEntriesFeed

urlpatterns = [
    url('^new', views.projet_new,name="project/new"),
    url('^list/\Z', views.projet_list, name='project/list'),
    url(r'^list_author/(?P<auteur>.+?)/$', views.projet_list_specific, name='project/list_author'),
    url(r'^project_view/(?P<id_projet>.+?)/$', views.projet_display, name='project/project_view'),
    url(r'^project_comment/(?P<id_projet>.+?)/$', views.comment_project, name='project/comment'),
    url(r'^project_search/', views.search_project, name='project/search'),
    url(r'^project/feed/$', LatestEntriesFeed(), name='project/feed'),
]
