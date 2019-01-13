from django.contrib.auth import logout
from django.core.urlresolvers import reverse
from django.core.exceptions import ObjectDoesNotExist
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login
from django.contrib.auth import update_session_auth_hash
from django.contrib.auth.forms import PasswordChangeForm
from the_project_factory_default.models import Personne
from the_project_factory_default.forms.LoginForm import LoginForm
from the_project_factory_default.forms.SignUpForm import SignUpForm
from the_project_factory_default.forms.EditUserProfile import EditUserProfile
from projet.models import Projet
from projet.models import Type
from projet.forms.add_project_type import AddProjectType


def accueil(request):
    """
    controler of the template accueil.html
    :param request: variable wich contains the value of the page
    :return: template html
    """
    list_of_all_project = Projet.objects.all()
    return render(request, 'the_project_factory_default/accueil.html', {'list_of_all_project': list_of_all_project},)


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
                return redirect(reverse(accueil))
            else:  # sinon une erreur sera affichée
                error_login = True
    else:
        login_form = LoginForm()

    if request.method == 'POST' and 'btn-register' in request.POST:
        register_form = SignUpForm(request.POST)
        if register_form.is_valid():
            user = register_form.save()
            login(request, user)
            return redirect(reverse(accueil))

    else:
        register_form = SignUpForm()

    return render(request, "the_project_factory_default/auth.html", {'register_form': register_form,
                                                                     'login_form': login_form,
                                                                     'error_login': error_login,
                                                                     'error_register': error_register})


def admin_panel(request):

    list_get_type = Type.objects.all()
    if request.method == 'POST' and 'btn-add-type' in request.POST :
        add_type_form = AddProjectType(request.POST)
        if add_type_form.is_valid():
            add_type_form.save()
    else:
        add_type_form = AddProjectType()
    return render(request, 'the_project_factory_default/admin_panel.html', {'list_of_type': list_get_type,
                                                                            'add_type_form': add_type_form})


def account(request):
    """
    controler of the template account that allow to edit the user profile
    :param request: variable wich contains the value of the page
    :return: template html
    """
    try:
        test = Personne.objects.get(user=request.user)  # on tente de récupérer le one to one field Personne
    except ObjectDoesNotExist:
        request.user.personne = Personne.objects.create(user= request.user)

    if request.method == 'POST' and 'btn-update-profil' in request.POST:
        form_edit_utilisateur = EditUserProfile(data=request.POST, user=request.user)
        if form_edit_utilisateur.is_valid():
            form_edit_utilisateur.save()
    else:
        form_edit_utilisateur = EditUserProfile(data=request.POST, user=request.user)

    if request.method == 'POST' and 'btn-password' in request.POST:
        form_edit_password = PasswordChangeForm(data=request.POST, user=request.user)

        if form_edit_password.is_valid():
            user = form_edit_password.save()
            update_session_auth_hash(request, user)  # Important!
    else:
        form_edit_password = PasswordChangeForm(request.user)
    return render(request, 'the_project_factory_default/profil.html', {'form_edit_utilisateur': form_edit_utilisateur,
                                                                       'form_edit_password': form_edit_password})


def deconnexion(request):
    logout(request)
    return redirect(reverse(accueil))
