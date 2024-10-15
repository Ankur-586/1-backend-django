# Generated by Django 5.0.7 on 2024-07-22 08:46

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user_auth', '0003_role'),
    ]

    operations = [
        migrations.AddField(
            model_name='customuser',
            name='user_role',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='user_auth.role'),
        ),
    ]