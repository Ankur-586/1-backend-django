from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import CartViewSet, CartItemPostSet, AssociateUserWithCart

router = DefaultRouter()

# router.register(r'cart_items', CartItemViewSet)
router.register('post_cart', CartItemPostSet)
router.register('user_cart', AssociateUserWithCart, basename='carts') # pass cart id 

urlpatterns = [
    path('', include(router.urls)),
    path('cart/<uuid:cart_id>/', CartViewSet.as_view(), name='cart-detail'),
    path('user_cart/<uuid:cart_id>/', AssociateUserWithCart.as_view({'patch': 'update'}), name='associate-user-with-cart'),
]


