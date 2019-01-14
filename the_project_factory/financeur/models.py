from django.db import models
from the_project_factory_default.models import Personne
from projet.models import Projet

# Create your models here.
class Financeur(models.Model):
    personne = models.ForeignKey(Personne, on_delete=models.CASCADE, default=None)

    capacite_financiere = models.IntegerField(default=0)
    limite_projet = models.IntegerField(default=0)

    def __str__(self):
        return self.personne.user.username


class Financement(models.Model):
    financeur = models.ForeignKey(Financeur, on_delete=models.CASCADE)
    projet = models.ForeignKey(Projet, on_delete=models.CASCADE, null=False, default=None)
    somme = models.IntegerField(default=0)

    def __str__(self):
        return "Financement n° " + str(self.id) + " somme : " + str(self.somme)
