from django.shortcuts import render
from projet.forms.CreateProjet import CreateProjet
from projet.models import Type, Projet, PhotoProjet
from the_project_factory_default.models import Personne
from evaluateur.models import Evaluation, Evaluateur
from django.db.models import Avg

def projet_new(request):
    if request.method == "POST":
        project_form = CreateProjet(request.POST)
        if project_form.is_valid():
            '''projet = project_form
            aut = Personne.objects.get(id=request.user.id)
            projet.personne = aut
            try:
                # we check if it's already exist, if not we register it
                created = Projet.objects.create(projet)
            except Exception as error:
                print("error for registering the project : ")
                print(error)
            created = projet.save()
            # projet = Projet.objects.get(personne=aut)'''
            aut = Personne.objects.get(id=request.user.id)
            projet = Projet()
            projet.titre = project_form.cleaned_data['titre']
            projet.personne = aut
            projet.Type = project_form.cleaned_data['Type']
            projet.description = project_form.cleaned_data['description']
            Projet.objects.create(titre=projet.titre,
                                  Type=projet.Type,
                                  description=projet.description,
                                  personne=projet.personne)
            return render(request, 'projet_form.html',  {'projets': projet})
    else:
        project_form = CreateProjet()
        return render(request, 'projet_form.html', {'project_form': project_form})


def projet_list(request):
    projets = Projet.objects.all().select_related()
    return render(request, 'projet_list.html',  {'projets': projets})


def projet_list_specific(request, auteur):
    projets = Projet.objects.filter(personne=auteur)
    return render(request, 'projet_list.html',  {'projets': projets})


def projet_display(request, id_projet):
    projet = Projet.objects.get(id=id_projet)
    evaluation = None
    already_eval = None
    note_projet = Evaluation.objects.filter(Projet=id_projet).aggregate(Avg('note'))
    note_projet = note_projet['note__avg']
    evaluateur = Evaluateur.objects.get(personne=request.user.personne)
    if evaluateur:
        evaluation = Evaluation.objects.filter(Evaluateur=evaluateur, Projet=id_projet)
    else:
        already_eval = False
    if len(evaluation) > 0:
        already_eval = True
    return render(request, 'project_view.html', {'projet': projet,
                                                 'already_eval': already_eval,
                                                 'note_projet': note_projet})
