from django.conf.urls import url
from the_project_factory_default import views

urlpatterns = [
    url('^accueil/', view=views.accueil, name='accueil'),
    url('^$', view=views.accueil, name='accueil')
]
