# Generated by Django 5.0.7 on 2024-07-27 18:33

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('order', '0003_order_item'),
        ('product', '0018_alter_product_meta_data'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Order_Item',
            new_name='OrderItem',
        ),
    ]
