from rest_framework import serializers
from .models import *

# class CategorySerializer(serializers.ModelSerializer):
#     subcategories = serializers.SerializerMethodField()
    
#     class Meta:
#         model = Category
#         fields = ('id','category_image', 'category_name', 'category_slug', 'description', 'subcategories')

#     def get_subcategories(self, obj):
#         # Serialize the subcategories of this category
#         subcategories = obj.subcategories.all()
#         return CategorySerializer(subcategories, many=True, context=self.context).data

class TagSerializer(serializers.ModelSerializer):
    # collect_tags = 
    class Meta:
        model = Tag
        fields = ['name']

class MetaSerializer(serializers.ModelSerializer):
    metadata = serializers.JSONField()
    class Meta:
        model = Meta
        fields = ['metadata']
        
class TaxSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tax
        fields = ['name','rate']

class ProductVariantImageSerializer(serializers.ModelSerializer):
    class Meta:
        model = VariantImages
        fields = ['image', 'alt_text', 'order']

class ProductVariantSerializer(serializers.ModelSerializer):
    variant_images = ProductVariantImageSerializer(source='images', many=True, read_only=True)  # Change `images` to `variant_images`

    class Meta:
        model = ProductVariants
        fields = ['product', 'sku', 'variant_name', 'price', 'weight', 'stock', 'stock_availability_status', 'variant_images']

class ProductSerializer(serializers.ModelSerializer):
    
    category = serializers.SerializerMethodField()
    variants = ProductVariantSerializer(many=True, read_only=True)
    variant_mages = ProductVariantImageSerializer(many=True, read_only=True)
    tags = serializers.StringRelatedField(many=True)
    meta = serializers.SerializerMethodField()
    tax = TaxSerializer()
    
    def get_category(self, obj):
        # Return a dictionary with category id and category name
        return {
            'id': obj.category.id,
            'category_name': obj.category.category_name,
            'category_slug': obj.category.category_slug,
        }
     
    def get_meta(self, obj):
        # Extract the metadata directly from the Meta model
        if obj.meta_data:
            return obj.meta_data.get_metadata()
        return {}
    
    class Meta:
        model = Product
        fields = ['id','created_at','updated_at','thumbnail','name','description','product_slug','tax',
                  'variant_mages','category','variants','tags','stock','meta','minimum_order_quantity','maximum_order_quantity']
    
    
