from django.contrib import admin
from django.contrib.auth.models import User
from the_project_factory_default.models import Personne
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin


class PersonneA(admin.StackedInline):
    model = Personne
    can_delete = False
    verbose_name_plural = 'Utilisateur'


class UserAdmin(BaseUserAdmin):
    inlines = (PersonneA,)


admin.site.unregister(User)
admin.site.register(User, UserAdmin)
