from django.shortcuts import render
from evaluateur.models import Evaluateur, Evaluation
from projet.models import Projet
from django.shortcuts import redirect
from django.db.models import Avg


# Create your views here.
def eval_project(request,id_projet):
    """
    controler of the template accueil.html
    :param request: variable wich contains the value of the page
    :return: template html
    """
    if request.method == 'POST':
        evaluateur, getted = Evaluateur.objects.get_or_create(personne=request.user.personne)
        projet = Projet.objects.get(id=id_projet)
        note = 0
        if 'note_1' in request.POST:
            note = 1
        if 'note_2' in request.POST:
            note = 2
        if 'note_3' in request.POST:
            note = 3
        if 'note_4' in request.POST:
            note = 4
        if 'note_5' in request.POST:
            note = 5
        evaluation = Evaluation.objects.create(Evaluateur=evaluateur, Type=projet.Type, Projet=projet, note=note)

        # Nous allons mettre à jour le karma de notre evaluateur, pour rapelle dans ce projet le karma est la moyenne
        # des notes accordé
        note_avg_donnée = Evaluation.objects.filter(Evaluateur=evaluateur).aggregate(Avg('note'))
        note_avg_donnée = note_avg_donnée['note__avg']
        evaluateur.karma = note_avg_donnée
        evaluateur.save()
    return redirect('project/project_view', id_projet)
