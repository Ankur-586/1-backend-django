# Generated by Django 5.0.7 on 2024-08-17 06:59

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('cart', '0011_rename_variant_id_cartitem_variant'),
    ]

    operations = [
        migrations.RenameField(
            model_name='cart',
            old_name='user_id',
            new_name='user',
        ),
    ]
