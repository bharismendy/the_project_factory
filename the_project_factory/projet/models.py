from django.db import models
from the_project_factory_default.models import Personne


class Type (models.Model):
    nom = models.CharField(max_length=100, unique=True)

    def __str__(self):
        return self.nom


class Projet (models.Model):
    personne = models.ForeignKey(Personne, on_delete=models.CASCADE)
    titre = models.CharField(max_length=100)
    description = models.TextField(blank=False)
    Type = models.ForeignKey(Type, on_delete=models.CASCADE)    
    image = models.ImageField(null=True, blank=True, upload_to="image_projet/")

    def __str__(self):
        return "projet de " + self.personne.user.username


class PhotoProjet(models.Model):
    projet = models.ForeignKey(Projet, on_delete=models.CASCADE)
    texte = models.CharField(max_length=300)
    image = models.ImageField(null=True, blank=True, upload_to="image_projet/")

    def __str__(self):
        return self.texte


class CommentaireProjet(models.Model):
    projet = models.ForeignKey(Projet, on_delete=models.CASCADE)
    texte = models.TextField(max_length=300)
    mail = models.EmailField(default=None, null=False)

    def __str__(self):
        return self.texte
