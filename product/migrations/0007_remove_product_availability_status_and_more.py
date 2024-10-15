# Generated by Django 5.0.7 on 2024-07-16 17:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0006_remove_product_product_class'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='product',
            name='availability_status',
        ),
        migrations.RemoveField(
            model_name='product',
            name='product_images',
        ),
        migrations.RemoveField(
            model_name='product',
            name='return_policy',
        ),
        migrations.RemoveField(
            model_name='product',
            name='shipping_information',
        ),
        migrations.RemoveField(
            model_name='product',
            name='sku',
        ),
        migrations.RemoveField(
            model_name='product',
            name='warranty_information',
        ),
        migrations.RemoveField(
            model_name='product',
            name='weight',
        ),
        migrations.AddField(
            model_name='productvariant',
            name='availability_status',
            field=models.BooleanField(default=True),
        ),
        migrations.AddField(
            model_name='productvariant',
            name='sku',
            field=models.CharField(default='', max_length=10, unique=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='productvariant',
            name='weight',
            field=models.CharField(default=' ', max_length=10),
            preserve_default=False,
        ),
    ]
