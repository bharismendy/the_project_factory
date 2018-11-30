# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-11-29 17:01
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('the_project_factory_default', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Financement',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('somme', models.IntegerField(default=0)),
            ],
        ),
        migrations.CreateModel(
            name='Financeur',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('capacite_financiere', models.IntegerField(default=0)),
                ('limite_projet', models.IntegerField(default=0)),
                ('Personne', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='the_project_factory_default.Personne')),
            ],
        ),
        migrations.AddField(
            model_name='financement',
            name='Financeur',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='financeur.Financeur'),
        ),
    ]
