from django.shortcuts import render
from contact_us.forms import contactForm
from contact_us.models import message
from django.shortcuts import redirect
# Create your views here.


def message_us(request):
    if request.method == 'POST':
        contact_form = contactForm(request.POST)
        if contact_form.is_valid():
            texte = contact_form.cleaned_data['texte']
            mail = contact_form.cleaned_data['mail']
            message_to_send = message.objects.create(texte=texte, mail=mail)
            return redirect('accueil')
    else:
        contact_form = contactForm()
    return render(request, 'contact.html', {'contact_form': contact_form})

