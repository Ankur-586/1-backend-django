from django.contrib.auth import get_user_model
from django.utils.timezone import now

from rest_framework import viewsets
from rest_framework import status
from rest_framework.response import Response
from rest_framework import serializers

from .models import CustomUser
from .serializers import UserSerializer

User = get_user_model()

class UserViewSet(viewsets.ModelViewSet):
    queryset = CustomUser.objects.all().order_by('-id')
    serializer_class = UserSerializer
    
    def list(self, request, *args, **kwargs):
        queryset = self.get_queryset()
        page = self.paginate_queryset(queryset)
        if page is not None:
            serializer = self.get_serializer(page, many=True)
            result = self.get_paginated_response(serializer.data)
            data = result.data # pagination data
        else:
            serializer = self.get_serializer(queryset, many=True)
            data = serializer.data
        payload = {
            "status": status.HTTP_200_OK, 
            "message": 'All Cart Details', 
            "data": data
        }
        return Response(payload ,status=status.HTTP_200_OK)
    
    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        try:
            serializer.is_valid(raise_exception=True)
            self.perform_create(serializer)
            payload = {
                "status": status.HTTP_200_OK, 
                "message": 'User Created', 
                "data": serializer.data
            }
            return Response(payload, status=status.HTTP_201_CREATED)
        except serializers.ValidationError as e:
            print(f"Validation error: {e.detail}")
            return Response(e.detail, status=status.HTTP_400_BAD_REQUEST)

