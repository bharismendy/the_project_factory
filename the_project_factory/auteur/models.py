from django.db import models
from the_project_factory_default.models import Personne


class Auteur(models.Model):
    Personne = models.OneToOneField(Personne)

    def __str__(self):
        return self.Personne.user.username
