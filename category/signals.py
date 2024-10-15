from django.db.models.signals import pre_save
from django.dispatch import receiver
from django.db import transaction

from category.models import Category
from product.models import Product, ProductVariants

@receiver(pre_save, sender=Category)
def update_is_active_status(sender, instance, **kwargs):
    if instance.pk:
        try:
            old_instance = Category.objects.get(pk=instance.pk)
        except Category.DoesNotExist:
            return
        if old_instance.is_active != instance.is_active:
            with transaction.atomic():
                if not instance.is_active:
                    # Hide all subcategories if the parent category is being is_active
                    instance.hide_all_subcategories()
                    # Hide all products associated with this category
                    Product.objects.filter(category=instance).update(is_active=False)
                    # Hide all variations associated with these products
                    ProductVariants.objects.filter(product__category=instance).update(is_active=False)
                else:
                    # Unhide all subcategories if the parent category is being unis_active
                    instance.unhide_all_subcategories()
                    # Unhide all products associated with this category
                    Product.objects.filter(category=instance).update(is_active=True)
                    # Unhide all variations associated with these products
                    ProductVariants.objects.filter(product__category=instance).update(is_active=True)
            
'''
Pre-Save Signal Handling:
-------------------------
. The update_is_active_status function is triggered before saving a Category instance. 
. It compares the old and new is_active status of the category to determine if any changes are necessary.

Category Existence Check:
--------------------------
. Retrieves the existing category from the database to compare its current is_active status with the new is_active status of the instance.

Handling is_active Status Change:
------------------------------
--> When Category is is_active:
    ------------------------
. Hide Subcategories: Calls hide_all_subcategories() to recursively hide all subcategories of the category.
. Hide Products: Updates all Product instances associated with the category to be is_active.
. Hide Variations: Updates all Variation instances associated with these products to be is_active.

--> When Category is Unis_active:
    ----------------------
. Unhide Subcategories: Calls unhide_all_subcategories() to recursively unhide all subcategories of the category.
. Unhide Products: Updates all Product instances associated with the category to be unis_active.
. Unhide Variations: Updates all Variation instances associated with these products to be unis_active.
'''