from django.db import models

# Create your models here.
class message(models.Model):
    texte = models.TextField(max_length=300)
    mail = models.EmailField(default=None, null=False)

    def __str__(self):
        return self.texte