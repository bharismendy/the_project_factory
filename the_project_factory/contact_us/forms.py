from contact_us.models import message
from django import forms


class contactForm(forms.ModelForm):
    class Meta:
        model = message
        fields = ('mail', 'texte')
