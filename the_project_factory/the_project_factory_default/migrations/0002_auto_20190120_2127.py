# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2019-01-20 21:27
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('the_project_factory_default', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='personne',
            name='avatar',
            field=models.ImageField(null=True, upload_to='avatars/'),
        ),
    ]
