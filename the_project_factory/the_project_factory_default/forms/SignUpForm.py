from django import forms
from the_project_factory_default.models import Personne
from django.contrib.auth.models import User


class SignUpForm(forms.Form):
    """form to register a new user"""

    identifiant = forms.CharField(label='identifiant', required=True)
    password1 = forms.CharField(label='password * ', widget=forms.PasswordInput)
    password2 = forms.CharField(label='Confirm password * ', widget=forms.PasswordInput)

    field_order = ['identifiant', 'password1', 'password2', ]

    def clean_identifiant(self):
        identifiant = self.cleaned_data.get('identifiant')
        qs = Personne.objects.filter(username=identifiant)
        if qs.exists():
            raise forms.ValidationError("username is taken")
        return identifiant

    def clean_password1(self):
        """check if the password is valid"""
        password1 = self.cleaned_data.get("password1")
        if len(password1) < 8:
            raise forms.ValidationError("The password should contains at least 8 characters")
        return password1

    def clean_password2(self):
        """Check that the two password entries match"""
        password1 = self.cleaned_data.get("password1")
        password2 = self.cleaned_data.get("password2")
        if password1 and password2 and password1 != password2:
            raise forms.ValidationError("Passwords don't match")
        return password2

    def save(self, commit=True):
        """
        Save the provided password in hashed format
        :param commit: True to save in DB false in other case
        :return: the method return a user object to the controleur
        """
        username = self.cleaned_data.get("identifiant")
        user = User(username=username)
        user.set_password(self.cleaned_data["password1"])
        if commit:
            user.save()
        personne = Personne()
        personne.user = user
        personne.save()
        return user
