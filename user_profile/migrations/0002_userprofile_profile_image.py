# Generated by Django 5.0.7 on 2024-07-11 07:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user_profile', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='userprofile',
            name='profile_image',
            field=models.ImageField(default=1, upload_to='media/user_profile'),
            preserve_default=False,
        ),
    ]
