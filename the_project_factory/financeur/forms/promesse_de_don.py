from django import forms
from financeur.models import Financement


class promesse_de_don(forms.ModelForm):
    class Meta:
        model = Financement
        fields = ['somme']
