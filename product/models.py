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
    tags = models.ManyToManyField(Tag, related_name='products')
    minimum_order_quantity = models.IntegerField()
    maximum_order_quantity = models.IntegerField()
    is_active = models.BooleanField(default=True)
    availability_status = models.BooleanField(default=True)
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
    def stock(self):
        if self.availability_status == True:
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
    weight = models.CharField(max_length=10)
    variant_quantity = models.IntegerField(default=1)
    stock = models.PositiveIntegerField(default=1)
    is_active = models.BooleanField(default=True)
    availability_status = models.BooleanField(default=True)

    def __str__(self):
        return f"{self.variant_name} of {self.product}"
    
    @property
    def stock_availability_status(self):
        if self.availability_status == True:
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
        


# class CartItemSerializer(serializers.ModelSerializer):
#     variant = serializers.SerializerMethodField()
#     cart_id = serializers.UUIDField(required=False, allow_null=True)
#     #variant_id = serializers.PrimaryKeyRelatedField(queryset=ProductVariants.objects.all())
#     class Meta:
#         model = CartItem
#         fields = ['variant',]
    
#     def get_variant(self, obj):
#         '''
#         obj : cart_item_id
#         '''
#         product_variant = obj.variant
#         variant_name = product_variant.variant_name
#         # print('variant,product',variant,product)
#         thumbnail = product_variant.images.first().image.url if product_variant.images.exists() else None

#         return {
#             'id': product_variant.pk,
#             'product_name': variant_name,
#             'price': product_variant.price,
#             'quantity': obj.quantity,
#             'total': product_variant.price * obj.quantity,
#             'thumbnail': thumbnail
#         }
    
#     def create(self, validated_data):
#         request = self.context['request']
#         user = request.user if request.user.is_authenticated else None
        
#         # For non-logged-in users, use session ID
#         if user is None:
#             session = request.session
#             cart_id = session.get('cart_id', None)
#             if cart_id:
#                 cart = Cart.objects.get(cart_id=cart_id)
#             else:
#                 cart = Cart.objects.create()
#                 session['cart_id'] = str(cart.cart_id)
#         else:
#             # Check if a cart already exists for the logged-in user
#             cart, created = Cart.objects.get_or_create(user=user)
        
#         validated_data['cart_id'] = cart
        
#         # Calculate the price based on the variant, if not already provided
#         if not validated_data.get('price'):
#             validated_data['price'] = validated_data['variant'].price
         
#         # Create the CartItem
#         cart_item = CartItem.objects.create(**validated_data)
#         return cart_item
