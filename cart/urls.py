from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import CartViewSet, CartItemViewSet, CartItemPostSet

router = DefaultRouter()

# router.register(r'cart_items', CartItemViewSet)
router.register('post_cart', CartItemPostSet)

urlpatterns = [
    path('', include(router.urls)),
    path('cart/<uuid:cart_id>/', CartViewSet.as_view(), name='cart-detail'),
]


# 4ee89dc7-0d5c-4e2d-8ae7-f6d1434fa5c6