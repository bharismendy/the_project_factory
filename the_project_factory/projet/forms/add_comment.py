from projet.models import CommentaireProjet
from django import forms


class AddComment(forms.ModelForm):
    class Meta:
        model = CommentaireProjet
        fields = ('mail', 'texte')
