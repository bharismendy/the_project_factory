from django.conf.urls import include, url
from . import views
from projet.Feed import LatestEntriesFeed

urlpatterns = [
    url(r'^contact_us/', views.message_us, name='contact_us'),
]
