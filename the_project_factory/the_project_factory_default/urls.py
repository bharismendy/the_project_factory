from django.conf.urls import url
from the_project_factory_default import views
from the_project_factory import settings
from django.contrib.staticfiles.urls import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

urlpatterns = [
    url('^$', view=views.accueil, name='accueil'),
    url('^deconnexion/', view=views.deconnexion, name='deconnexion'),
    url('^connexion/', view=views.connexion, name='connexion'),
    url('^profil/', view=views.account, name='profil'),
    url('^admin_panel', view=views.admin_panel, name='admin_panel')
]

urlpatterns += staticfiles_urlpatterns()
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
