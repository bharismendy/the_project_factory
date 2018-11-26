from django.db import models
from the_project_factory_default.models import Personne
from projet.models import Projet, Type


# Create your models here.
class Evaluateur(models.Model):
    Personne = models.OneToOneField(Personne)
    karma = models.IntegerField(default=0)

    def __str__(self):
        return self.Personne.user.username


class Critere(models.Model):
    description = models.TextField(blank=True)

    def __str__(self):
        return "" + str(self.id) + " descrption " + self.description


class Evaluation(models.Model):
    Evaluateur = models.ForeignKey(Evaluateur,on_delete=models.CASCADE, default=None)
    Type = models.ForeignKey(Type, on_delete=models.CASCADE, default=None)
    note = models.IntegerField(default=0)
    Projet = models.ForeignKey(Projet, on_delete=models.CASCADE, default=None)

    def __str__(self):
        return "Evaluation : " + str(self.id)

