# Generated by Django 5.0.7 on 2024-08-09 05:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0019_product_created_at'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='product_slug',
            field=models.SlugField(max_length=100, null=True, unique=True),
        ),
    ]