# Generated by Django 5.0.7 on 2024-07-15 11:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('category', '0003_remove_category_name_category_category_name_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='category',
            name='hidden',
            field=models.BooleanField(default=False),
        ),
    ]
