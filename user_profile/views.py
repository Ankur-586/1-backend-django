from django.shortcuts import render

from rest_framework import viewsets

from .models import UserProfile
from .serializers import UserProfileSerialziers

class UserProfile(viewsets.ModelViewSet):
    queryset = UserProfile.objects.all()
    serializer_class = UserProfileSerialziers 