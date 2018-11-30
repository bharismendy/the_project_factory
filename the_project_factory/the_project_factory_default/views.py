from django.shortcuts import render
from django.contrib.auth import logout
from django.core.urlresolvers import reverse

def accueil(request):
    """
    controler of the template accueil.html
    :param request: variable wich contains the value of the page
    :return: template html
    """
    return render(request, 'the_project_factory_default/accueil.html')


def deconnexion(request):
    logout(request)
    return redirect(reverse(connexion))