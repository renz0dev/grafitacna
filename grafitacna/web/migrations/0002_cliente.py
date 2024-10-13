# Generated by Django 5.1.2 on 2024-10-12 22:40

import django.db.models.deletion
from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('web', '0001_initial'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Cliente',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('dni', models.CharField(max_length=8)),
                ('sexo', models.CharField(default='M', max_length=1)),
                ('telefono', models.CharField(max_length=20)),
                ('fecha_nacimiento', models.DateField(null=True)),
                ('direccion', models.TextField()),
                ('usuario', models.OneToOneField(on_delete=django.db.models.deletion.RESTRICT, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
