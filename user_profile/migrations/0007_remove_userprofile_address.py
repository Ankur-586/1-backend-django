# Generated by Django 5.0.7 on 2024-07-27 19:57

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('user_profile', '0006_rename_street_address_user_address_address_line_1_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='userprofile',
            name='address',
        ),
    ]
