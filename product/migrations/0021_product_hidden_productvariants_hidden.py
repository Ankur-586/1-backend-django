# Generated by Django 5.0.7 on 2024-08-14 09:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0020_product_product_slug'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='hidden',
            field=models.BooleanField(default=False),
        ),
        migrations.AddField(
            model_name='productvariants',
            name='hidden',
            field=models.BooleanField(default=False),
        ),
    ]
