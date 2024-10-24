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
i want a end point suppose if i hit subcategories i get all the sub categories 
and i hit category i get all category and sub category. if i hit the sub 
category and pass category id then i should get category 
'''