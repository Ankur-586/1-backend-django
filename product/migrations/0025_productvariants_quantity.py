# Generated by Django 5.0.7 on 2024-08-22 11:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0024_product_availability_status'),
    ]

    operations = [
        migrations.AddField(
            model_name='productvariants',
            name='quantity',
            field=models.IntegerField(default=1),
        ),
    ]