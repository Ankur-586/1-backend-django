# Generated by Django 5.0.7 on 2024-07-12 09:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('category', '0002_category_category_image'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='category',
            name='name',
        ),
        migrations.AddField(
            model_name='category',
            name='category_name',
            field=models.CharField(default=1, max_length=50, unique=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='category',
            name='category_slug',
            field=models.SlugField(default=23, max_length=100, unique=True),
            preserve_default=False,
        ),
    ]
