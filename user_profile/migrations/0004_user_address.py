# Generated by Django 5.0.7 on 2024-07-25 07:13

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user_profile', '0003_alter_userprofile_profile_image'),
    ]

    operations = [
        migrations.CreateModel(
            name='User_Address',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('address_type', models.CharField(max_length=100)),
                ('house_number', models.CharField(max_length=10)),
                ('house_name', models.CharField(max_length=100)),
                ('apartment_name', models.CharField(max_length=100)),
                ('street_address', models.CharField(max_length=255)),
                ('city', models.CharField(max_length=50)),
                ('state', models.CharField(max_length=50)),
                ('postal_code', models.CharField(max_length=6)),
                ('country', models.CharField(default='India', max_length=5)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='user_profile.userprofile')),
            ],
        ),
    ]
