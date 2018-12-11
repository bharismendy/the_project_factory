from django.contrib import admin
from .models import *
# Register your models here.
from projet.models import *
admin.site.register(Projet)
admin.site.register(Auteur)
