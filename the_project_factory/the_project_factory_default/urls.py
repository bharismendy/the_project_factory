from django.conf.urls import url
from the_project_factory_default import views

urlpatterns = [
    url('^$', view=views.accueil, name='accueil'),
    url('^deconnexion/', view=views.deconnexion, name='deconnexion'),
    url('^connexion/', view=views.connexion, name='connexion'),
    url('^profil/', view=views.account, name='profil')
]
