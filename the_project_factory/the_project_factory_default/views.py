from django.shortcuts import render, redirect
from django.contrib.auth import logout
from django.core.urlresolvers import reverse
from django.http import HttpResponseRedirect
from the_project_factory_default.forms.LoginForm import LoginForm
from the_project_factory_default.forms.SignUpForm import SignUpForm
from django.contrib.auth import authenticate, login


def accueil(request):
    """
    controler of the template accueil.html
    :param request: variable wich contains the value of the page
    :return: template html
    """
    return render(request, 'the_project_factory_default/accueil.html')


def connexion(request):
    """
    controler that allow the user to login or register on the web site
    :param request: request variable
    :return: a view with both form (login and register)
    """
    error_login = False
    error_register = False
    if request.method == 'POST' and 'btn-login' in request.POST:
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            identifiant = login_form.cleaned_data["identifiant"]
            password = login_form.cleaned_data["mot_de_passe"]
            user = authenticate(username=identifiant, password=password)  # Nous vérifions si les données sont correctes
            if user:  # Si l'objet renvoyé n'est pas None
                login(request, user)  # nous connectons l'utilisateur
                return HttpResponseRedirect('accueil')
            else:  # sinon une erreur sera affichée
                error_login = True
    else:
        login_form = LoginForm()

    if request.method == 'POST' and 'btn-register' in request.POST:
        register_form = SignUpForm(request.POST)
        if register_form.is_valid():
            user = register_form.save()
            login(request, user)
            return HttpResponseRedirect('accueil')

    else:
        register_form = SignUpForm()

    return render(request, "the_project_factory_default/auth.html", {'register_form': register_form,
                                                                     'login_form': login_form,
                                                                     'error_login': error_login,
                                                                     'error_register': error_register})


def deconnexion(request):
    logout(request)
    return redirect(reverse(accueil))
