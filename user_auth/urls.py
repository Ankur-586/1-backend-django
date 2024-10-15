from django.urls import path,include

from rest_framework import routers
from rest_framework_simplejwt.views import TokenRefreshView

from .views import UserViewSet
from .utils import CustomTokenObtainPairView
from . import views

router = routers.DefaultRouter()
router.register('users', UserViewSet)

urlpatterns = [
    path('', include(router.urls)),
    path('api/token/', CustomTokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('api/token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    # path('user-token/',ObtainTokenView.as_view(),name='user-token'),
]



# http://127.0.0.1:8000/auth/users/reg  
# http://127.0.0.1:8000/product/products