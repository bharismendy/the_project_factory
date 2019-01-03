from django.shortcuts import render
from projet.forms.CreateProjet import CreateProjet
from projet.models import Type, Projet, PhotoProjet
from the_project_factory_default.models import Personne


def projet_new(request):
    if request.method == "POST":
        project_form = CreateProjet(request.POST)
        if project_form.is_valid():
            projet = project_form
            aut = Personne.objects.get(pk=request.user.id)
            print(aut.id)
            projet.Auteur = aut
            projet.save()
            projet = Projet.objects.filter(Auteur=request.user)
            return render(request, 'projet_list.html',  {'projets': projet})
    else:
        project_form = CreateProjet ()
        return render(request, 'projet_form.html', {'project_form': project_form})


def projet_list(request):
    projet = Projet.objects.all().select_related()
    return render(request, 'projet_list.html',  {'projets': projet})


def projet_list_specific(request,auteur):
    projet = Projet.objects.filter(Auteur=auteur)
    print("auteur"+auteur)
    return render(request, 'projet_list.html',  {'projets': projet})


