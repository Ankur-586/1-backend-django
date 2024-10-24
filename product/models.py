from django.db import models
from decimal import Decimal
import json

from category.models import Category

class Tax(models.Model):
    name = models.CharField(max_length=255)
    rate = models.DecimalField(max_digits=5, decimal_places=2)  # Tax rate in percentage

    def __str__(self):
        return f'{self.name} {self.rate}'

class Tag(models.Model):
    name = models.CharField(max_length=255)
    
    def __str__(self):
        return self.name

class Meta(models.Model):
    metadata = models.TextField(default='{}', blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return self.metadata
    
    def get_metadata(self):
        if self.metadata:
            try:
                return json.loads(self.metadata)
            except json.JSONDecodeError:
                return {"response":"error"}  # Return an empty dictionary if there's a decoding error
        return {"response":"empty"}  # Return an empty dictionary if self.metadata is None or empty

    def set_metadata(self, metadata_dict):
        self.metadata = json.dumps(metadata_dict)

class ProductClass(models.Model):
    '''
    Is used to group products with similar characteristics 
    and manage common attributes and behaviors.
    '''
    name = models.CharField(max_length=50)
    has_variant = models.BooleanField(default=False)
    is_shipping_required = models.BooleanField(default=True)

    def __str__(self):
        return self.name

class ProductAttribute(models.Model):
    product_class = models.ForeignKey(ProductClass, on_delete=models.CASCADE, related_name='attributes')
    display = models.CharField(max_length=50)
    name = models.SlugField()
    
    class Meta:
        verbose_name = 'Product Attribute'
        verbose_name_plural = 'Product Attributes'

class Product(models.Model):
    # product_class = models.ForeignKey(ProductClass, on_delete=models.CASCADE)
    category = models.ForeignKey(Category, on_delete=models.SET_NULL, null=True, related_name='products')
    available_on = models.DateField(auto_now_add=True)
    name = models.CharField(max_length=255)
    product_slug = models.SlugField(max_length=100, unique=True, null=True)
    description = models.TextField(blank=True, null=True)
    price = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    tax = models.ForeignKey(Tax, on_delete=models.SET_NULL, null=True)
    meta_data = models.OneToOneField(Meta, on_delete=models.SET_NULL,related_name='product_meta',null=True,blank=True)
    thumbnail = models.ImageField(upload_to='thumbnails/')
    tags = models.ManyToManyField(Tag, related_name='products', blank=True)
    minimum_order_quantity = models.CharField(max_length=10, default=1)
    maximum_order_quantity = models.CharField(max_length=10, default=5)
    is_active = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def price_with_tax(self):
        if self.price is not None and self.tax: 
            tax_rate = self.tax.rate
            if tax_rate is not None:
                tax_amount = (self.price * tax_rate) / (tax_rate + Decimal('100'))
                return self.price + tax_amount
        return self.price
    
    @property
    def product_stock(self):
        if self.is_active == True:
            return 'Instock'
        return 'Out Of Stock'
    
    def __str__(self):
        return self.name
    
    class Meta:
        verbose_name = 'Product'
        verbose_name_plural = 'Products'

class ProductVariants(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name='variants')
    sku = models.CharField(max_length=10, unique=True)
    variant_name = models.CharField(max_length=255)
    price = models.DecimalField(max_digits=10, decimal_places=2, blank=True, null=True)
    weight = models.CharField(max_length=10,  blank=True, null=True)
    variant_quantity = models.IntegerField(default=1)
    stock = models.PositiveIntegerField(default=1)
    is_active = models.BooleanField(default=True)

    def __str__(self):
        return f"{self.variant_name} of {self.product}"
    
    @property
    def proudct_variant_stock(self):
        if self.is_active == True:
            return 'Instock'
        return 'Out Of Stock'
    
    class Meta:
        verbose_name = 'Product Variant'
        verbose_name_plural = 'Product Variants'

class VariantImages(models.Model):
    product_variant = models.ForeignKey(ProductVariants, on_delete=models.CASCADE, related_name='images')
    image = models.ImageField(upload_to='products/%Y/%m/%d/')
    alt_text = models.CharField(max_length=255, blank=True, null=True)
    order = models.PositiveIntegerField(default=0)

    def __str__(self):
        return f"Image for {self.product_variant}"

    class Meta:
        verbose_name = 'Variant Image'                                               
        verbose_name_plural = 'Variant Images'
        
'''
NOTE:
Make product variant reverse feature
'''


# Cart Functionality with poduct variants without using seesion Django Rest Framework
'''
when cart is created ny the anaymous user in the frontend 
1. i want tha tif user is none then the cart should get created an when user is found then it should get binded to thatuser.
Now my quewstion is. thta the cart id will be send to the bakend by the frontend. but the id will 1st get created on the backend then
'''
