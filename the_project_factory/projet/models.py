from django.db import models
from auteur.models import Auteur


class Type (models.Model):
    nom = models.CharField(max_length=100)

    def __str__(self):
        return self.nom


class Projet (models.Model):
    Auteur = models.ForeignKey(Auteur, on_delete=models.CASCADE)
    titre = models.CharField(max_length=100)
    description = models.TextField(blank=False)
    Type = models.ForeignKey(Type, on_delete=models.CASCADE)

    def __str__(self):
        return "projet de " + self.Auteur.Personne.user.username


class PhotoProjet(models.Model):
    Projet = models.ForeignKey(Projet, on_delete=models.CASCADE)
    texte = models.CharField(max_length=300)
    image = models.ImageField(null=True, blank=True, upload_to="image_projet/")

    def __str__(self):
        return self.texte