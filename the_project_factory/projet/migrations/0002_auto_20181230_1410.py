# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-12-30 14:10
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('projet', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='photoprojet',
            old_name='Projet',
            new_name='projet',
        ),
        migrations.AlterField(
            model_name='type',
            name='nom',
            field=models.CharField(max_length=100, unique=True),
        ),
    ]