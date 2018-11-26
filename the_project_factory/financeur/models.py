from django.db import models
from the_project_factory_default.models import Personne


# Create your models here.
class Financeur(models.Model):
    Personne = models.OneToOneField(Personne)
    capacite_financiere = models.IntegerField(default=0)
    limite_projet = models.IntegerField(default=0)

    def __str__(self):
        return self.Personne.user.username


class Financement(models.Model):
    Financeur = models.ForeignKey(Financeur, on_delete=models.CASCADE)
    somme = models.IntegerField(default=0)

    def __str__(self):
        return "Financement n° " + str(self.id) + " somme : " + str(self.somme)
