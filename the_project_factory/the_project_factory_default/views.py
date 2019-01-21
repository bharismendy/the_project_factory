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
from projet.models import Projet,Type
from contact_us.models import message
from projet.forms.add_project_type import AddProjectType
from financeur.models import Financement, Financeur
from evaluateur.models import Evaluation,Evaluateur
from django.contrib.auth.decorators import login_required


def accueil(request):
    """
    controler of the template accueil.html
    :param request: variable wich contains the value of the page
    :return: template html
    """
    list_of_all_project = Projet.objects.all().order_by('id')
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

@login_required
def admin_panel(request):
    list_get_type = Type.objects.all()
    if request.method == 'POST' and 'btn-add-type' in request.POST :
        add_type_form = AddProjectType(request.POST)
        if add_type_form.is_valid():
            add_type_form.save()
    else:
        add_type_form = AddProjectType()

    message_received = message.objects.all()
    return render(request, 'the_project_factory_default/admin_panel.html', {'list_of_type': list_get_type,
                                                                            'add_type_form': add_type_form,
                                                                            'message_received': message_received})


@login_required
def account(request):
    """
    controler of the template account that allow to edit the user profile
    :param request: variable wich contains the value of the page
    :return: template html
    """
    list_of_financement = None
    karma = None
    list_of_eval = None

    try:
        test = Personne.objects.get(user=request.user)  # on tente de récupérer le one to one field Personne
    except ObjectDoesNotExist:
        request.user.personne = Personne.objects.create(user= request.user)

    if request.method == 'POST' and 'btn-update-profil' in request.POST:
        form_edit_utilisateur = EditUserProfile(data=request.POST, user=request.user, files=request.FILES)
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
    # récupération de l'historique des evalutation et le karma
    evaluateur = Evaluateur.objects.filter(personne=request.user.personne)
    if evaluateur is not None:
        if len(evaluateur) == 1:
            evaluateur = evaluateur[0]
            karma = evaluateur.karma
            list_of_eval = Evaluation.objects.filter(Evaluateur=evaluateur)
    financeur = Financeur.objects.filter(personne=request.user.personne)
    if financeur is not None:
        if len(financeur) == 1:
            financeur = financeur[0]
            list_of_financement = Financement.objects.filter(financeur=financeur)

    list_of_project = Projet.objects.filter(personne=request.user.personne)
    return render(request, 'the_project_factory_default/profil.html', {'form_edit_utilisateur': form_edit_utilisateur,
                                                                       'form_edit_password': form_edit_password,
                                                                       'list_of_financement': list_of_financement,
                                                                       'karma': karma,
                                                                       'list_of_eval': list_of_eval,
                                                                       'list_of_project': list_of_project})


def mentions(request):
    return render(request, 'the_project_factory_default/mentions.html')

@login_required
def deconnexion(request):
    logout(request)
    return redirect(reverse(accueil))


