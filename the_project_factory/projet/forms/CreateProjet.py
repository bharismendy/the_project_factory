from django import forms
from projet.models import Projet


class CreateProjet(forms.ModelForm):
    class Meta:
        model = Projet
        fields = ('titre', 'description', 'Type')
