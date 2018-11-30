from django.db import models
from django.contrib.auth.models import User
from the_project_factory.settings import STATIC_ROOT


# Create your models here.
class Personne(models.Model):
    user = models.OneToOneField(User)  # La liaison OneToOne vers le modèle User
    age = models.IntegerField(null=True)
    site_web = models.URLField(blank=True)
    avatar = models.ImageField(null=True, blank=True, upload_to="avatars/")
    signature = models.TextField(blank=True)
    inscrit_newsletter = models.BooleanField(default=False)

    def __str__(self):
        return "Profil de {0}".format(self.user.username)
