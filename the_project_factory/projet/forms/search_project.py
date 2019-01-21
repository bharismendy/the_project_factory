from django import forms


class SearchProject(forms.Form):
    q = forms.CharField(label="")
