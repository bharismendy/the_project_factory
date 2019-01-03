from projet.models import Type
from django import forms


class AddProjectType(forms.ModelForm):
    class Meta:
        model = Type
        fields = '__all__'
