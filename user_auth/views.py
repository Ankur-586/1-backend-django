from django.contrib.auth import get_user_model
from django.utils.timezone import now

from rest_framework import viewsets
from rest_framework import views, permissions, status
from rest_framework.response import Response
from rest_framework import serializers

from .models import CustomUser
from .serializers import UserSerializer

User = get_user_model()

class UserViewSet(viewsets.ModelViewSet):
    queryset = CustomUser.objects.all()
    serializer_class = UserSerializer
    
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

