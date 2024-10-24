# Generated by Django 5.0.7 on 2024-07-15 11:35

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='product',
            name='max_order_quantity',
        ),
        migrations.AlterField(
            model_name='product',
            name='available_on',
            field=models.DateField(auto_now_add=True),
        ),
        migrations.AlterField(
            model_name='product',
            name='dimensions',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='product.dimensions'),
        ),
        migrations.AlterField(
            model_name='product',
            name='meta',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='product.meta'),
        ),
        migrations.AlterField(
            model_name='product',
            name='minimum_order_quantity',
            field=models.IntegerField(),
        ),
        migrations.AlterField(
            model_name='product',
            name='product_class',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='product.productclass'),
        ),
        migrations.AlterField(
            model_name='product',
            name='product_images',
            field=models.JSONField(default={'data': []}),
        ),
        migrations.AlterField(
            model_name='product',
            name='return_policy',
            field=models.TextField(),
        ),
        migrations.AlterField(
            model_name='product',
            name='shipping_information',
            field=models.TextField(),
        ),
        migrations.AlterField(
            model_name='product',
            name='sku',
            field=models.CharField(max_length=255, unique=True),
        ),
        migrations.AlterField(
            model_name='product',
            name='thumbnail',
            field=models.ImageField(upload_to='thumbnails/'),
        ),
        migrations.AlterField(
            model_name='product',
            name='warranty_information',
            field=models.TextField(),
        ),
    ]
