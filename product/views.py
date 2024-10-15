from rest_framework import viewsets
from rest_framework import status
from rest_framework.response import Response

from django.db.models import Q

from .models import *
from .serializers import *

# class CategoryViewSet(viewsets.ModelViewSet):
#     queryset = Category.objects.filter(Q(parent_category__isnull=True) & Q(hidden=True))  
#     serializer_class = CategorySerializer

class ProductViewSet(viewsets.ModelViewSet):
    queryset = Product.objects.filter(Q(is_active=False)).order_by('created_at')
    serializer_class = ProductSerializer

    def list(self, request, *args, **kwargs):
        try:
            queryset = self.get_queryset()
            serializer = self.get_serializer(queryset, many=True)
            payload = {
                "status": status.HTTP_200_OK, 
                "message": 'All Products', 
                "data": serializer.data
            }
            return Response(payload ,status=status.HTTP_200_OK)
        except Exception as e:
            return Response(data=[], message=str(e), status_code=status.HTTP_500_INTERNAL_SERVER_ERROR)
    
