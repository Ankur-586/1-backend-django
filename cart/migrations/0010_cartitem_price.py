# Generated by Django 5.0.7 on 2024-08-16 12:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cart', '0009_alter_cartitem_cart_id_alter_cartitem_variant_id'),
    ]

    operations = [
        migrations.AddField(
            model_name='cartitem',
            name='price',
            field=models.IntegerField(default=0),
        ),
    ]
