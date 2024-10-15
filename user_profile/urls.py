from django.urls import path,include

from rest_framework import routers

from .views import UserProfile


router = routers.DefaultRouter()
router.register('user_profile', UserProfile)

urlpatterns = [
    path('', include(router.urls)),
]
