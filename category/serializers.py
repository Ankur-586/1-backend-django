from rest_framework import serializers
from .models import Category

class CategorySerializer(serializers.ModelSerializer):
    subcategories = serializers.SerializerMethodField()
    
    class Meta:
        model = Category
        fields = ('id', 'category_image', 'category_name', 'category_slug', 'description','subcategories')

    def get_subcategories(self, obj):
        subcategories = obj.subcategories.all()
        return CategorySerializer(subcategories, many=True, context=self.context).data

'''
class Category(models.Model):
    category_image  = models.ImageField(upload_to='category')
    category_name   = models.CharField(max_length=50, unique=True)
    category_slug   = models.SlugField(max_length=100, unique=True)
    description     = models.TextField(null=False, blank=False, default='')
    hidden          = models.BooleanField(default=False)
    parent_category = models.ForeignKey('self', on_delete=models.CASCADE, null=True, blank=True, related_name='subcategories')
    
    def __str__(self):
        return self.category_name

    class Meta:
        ordering = ['parent_category__id']  class CategorySerializer(serializers.ModelSerializer):
    subcategories = serializers.SerializerMethodField()
    
    class Meta:
        model = Category
        fields = ('id', 'category_image', 'category_name', 'category_slug', 'description','subcategories')

    def get_subcategories(self, obj):
        subcategories = obj.subcategories.all()
        return CategorySerializer(subcategories, many=True, context=self.context).data 
        
i want a end point suppose if i hit subcategories i get all the sub categories 
and i hit category i get all category and sub category. if i hit the sub 
category and pass category id then i should get category 
'''