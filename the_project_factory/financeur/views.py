from django.shortcuts import render
from financeur.forms import promesse_de_don
from financeur.models import Financement, Financeur
from projet.models import Projet
from django.shortcuts import redirect
from django.contrib.auth.decorators import login_required

# Create your views here.
@login_required
def funds_project(request,id_projet):
    promesse_de_don_form = promesse_de_don()
    if request.method == 'POST':
        promesse_de_don_form = promesse_de_don(request.POST)
        if promesse_de_don_form.is_valid():
            financeur, getted = Financeur.objects.get_or_create(personne=request.user.personne)
            projet = Projet.objects.get(id=id_projet)
            somme = promesse_de_don_form.cleaned_data['somme']
            Financement.objects.create(somme=somme, projet=projet, financeur=financeur)
            return redirect('project/project_view', id_projet)
    return render(request, 'financement_projet.html', {'form': promesse_de_don_form,
                                                       'id_projet': id_projet})
