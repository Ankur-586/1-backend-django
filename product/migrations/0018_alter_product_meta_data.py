# Generated by Django 5.0.7 on 2024-07-24 19:02

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0017_rename_metadata_product_meta_data'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='meta_data',
            field=models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='product_meta', to='product.meta'),
        ),
    ]