# Generated by Django 5.0.7 on 2024-08-14 11:22

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0021_product_hidden_productvariants_hidden'),
    ]

    operations = [
        migrations.RenameField(
            model_name='product',
            old_name='hidden',
            new_name='is_active',
        ),
        migrations.RenameField(
            model_name='productvariants',
            old_name='hidden',
            new_name='is_active',
        ),
    ]
