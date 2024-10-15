from django.db import models

class Category(models.Model):
    category_image  = models.ImageField(upload_to='category')
    category_name   = models.CharField(max_length=50, unique=True)
    category_slug   = models.SlugField(max_length=100, unique=True)
    description     = models.TextField(null=False, blank=False, default='')
    is_active       = models.BooleanField(default=True)
    parent_category = models.ForeignKey('self', on_delete=models.CASCADE, null=True, blank=True, related_name='subcategories')
    
    def __str__(self):
        return self.category_name

    class Meta:
        ordering = ['parent_category__id']
        
    def hide_all_subcategories(self) -> None:
        """
        -----
        Docs:
        -----
        Purpose: Recursively hides all subcategories of the current category.
        Process: Iterates through each subcategory, sets its hidden status to True, saves the subcategory, 
                 and then calls itself to handle further subcategories.
        """
        for subcategory in self.subcategories.all():
            subcategory.is_active = False
            subcategory.save()
            subcategory.hide_all_subcategories()  # Recursively hide subcategories
            
    def unhide_all_subcategories(self) -> None:
        """
        -----
        Docs:
        -----
        Purpose: Recursively unhides all subcategories of the current category.
        Process: Iterates through each subcategory, sets its hidden status to False, saves the subcategory, 
                 and then calls itself to handle further subcategories.
        """
        for subcategory in self.subcategories.all():
            subcategory.is_active = True
            subcategory.save()
            subcategory.unhide_all_subcategories()  # Recursively unhide subcategories
        
'''
from category.models import Category
category = Category.objects.first() 
'''