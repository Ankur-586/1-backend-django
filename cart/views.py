from rest_framework import viewsets, status, generics
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated, AllowAny
from rest_framework_simplejwt.authentication import JWTAuthentication

from django.shortcuts import get_object_or_404

from product.models import ProductVariants
from .models import Cart, CartItem
from .serializers import CartSerializer, CartItemPostSerializer


class CartViewSet(generics.RetrieveAPIView):
    queryset = Cart.objects.all()
    serializer_class = CartSerializer 
    lookup_field = 'cart_id'
    
    def retrieve(self, request, *args, **kwargs):
        try:
            # Get the object based on the primary key provided in the URL
            instance = self.get_object()
            serializer = self.get_serializer(instance)
            payload = {
                "status": status.HTTP_200_OK,
                "message": 'Cart Detail',
                "data": serializer.data
            }
            return Response(payload, status=status.HTTP_200_OK)
        except Exception as e:
            return Response({
                "status": status.HTTP_400_BAD_REQUEST,
                "message": str(e),
                "data": []
            }, status=status.HTTP_400_BAD_REQUEST)

class CartItemPostSet(viewsets.ModelViewSet):
    authentication_classes = [JWTAuthentication]
    queryset = CartItem.objects.all()
    serializer_class = CartItemPostSerializer 
    permission_classes = [AllowAny]
    http_method_names = ['post']
    
    def create(self, request, *args, **kwargs):
        print("Incoming data:", request.data)
        user = request.user if request.user.is_authenticated else None
        cart_id = self.kwargs.get('cart_id')
        # Get or create the cart
        cart, created = Cart.objects.get_or_create(user=user, cart_id=cart_id)

        items_data = request.data.get('items', [])
        response_data_1 = []
        cart_items = []

        for item_data in items_data:
            item_serializer = CartItemPostSerializer(data=item_data)
            if item_serializer.is_valid():
                variant_id = item_data['variant']
                print('variant_id',variant_id)
                variant = get_object_or_404(ProductVariants, pk=variant_id) 
                
                cart_item = CartItem(
                    cart_id=cart,
                    variant=variant,
                    quantity=item_serializer.validated_data['quantity'],
                    price=variant.price
                )
                cart_items.append(cart_item)

                response_data_1.append({
                    "cart_id": cart.cart_id,
                    "created_at": cart.created_at,
                    "updated_at": cart.updated_at,
                    "variant": {
                        "variant_id": cart_item.variant.pk,
                        "variant_name": cart_item.variant.variant_name,
                        "variant_image": cart_item.variant.images.first().image.url if cart_item.variant.images.exists() else None,
                    },
                    "quantity": cart_item.quantity,
                    "price": cart_item.price,
                    "total_price": cart_item.calculate_price()
                })
            else:
                print(item_serializer.errors)
                return Response({
                    'status': status.HTTP_400_BAD_REQUEST,
                    'message': item_serializer.errors,
                    'data': []
                }, status=status.HTTP_400_BAD_REQUEST)

        # Bulk create cart items
        CartItem.objects.bulk_create(cart_items)

        response_data = {
            'cart_id': cart.cart_id,
            "created_at": cart.created_at,
            "updated_at": cart.updated_at,
            "user": user.username if user else None,
            "items": response_data_1
        }

        return Response({
            'status': status.HTTP_201_CREATED,
            'message': 'Items added to cart successfully.',
            'cart': response_data
        }, status=status.HTTP_201_CREATED)
        
class AssociateUserWithCart(viewsets.ModelViewSet):
    '''
    This view binds the user to a particular cart id 
    When the cart id is created without a user.
    '''
    authentication_classes = [JWTAuthentication]
    permission_classes = [IsAuthenticated]
    queryset = Cart.objects.all()
    serializer_class = CartSerializer
    lookup_field = 'cart_id'

    def perform_create(self, serializer):
        # Automatically associate the cart with the authenticated user
        serializer.save(user=self.request.user)

    def update(self, request, *args, **kwargs):
        # Fetch the cart object
        cart = self.get_object()

        # Only allow updating the user if the cart is not already linked to a user
        if cart.user and cart.user != request.user:
            return Response(
                {
                'status': status.HTTP_403_FORBIDDEN,
                'message': "This cart is already associated with another user.",
                'data': []
                }, status=status.HTTP_403_FORBIDDEN)

        # Associate the cart with the authenticated user
        cart.user = request.user
        cart.save()

        serializer = self.get_serializer(cart)
        
        response = {
            'status': status.HTTP_200_OK,
            'messgae': 'User Binded with cart',
            'data': serializer.data 
        }
        return Response(response, status=status.HTTP_200_OK)

'''
if suppose i want this view to work for guest and authentciated users both. If there is no token then consider the user as guest and if there is token then consider assocaite 
the user to that cart


i want the list method to only show data based on cart it. wul pass cart id to the url and then fetch that cart details using the cart id
when i create a cart, item should be added to it
def create(self, request, *args, **kwargs):
        try:
            items_data = request.data.get('items',[])
            serializer = self.get_serializer(data=items_data, many=True, context={'request': request})
            if serializer.is_valid(raise_exception=True):
                response_data = serializer.save()
                # headers = self.get_success_headers(serializer.data)
                return Response({
                    "status": status.HTTP_201_CREATED,
                    "message": 'Cart Items Created Successfully',
                    "data": response_data
                }, status=status.HTTP_201_CREATED)
            return Response({
                "status": status.HTTP_400_BAD_REQUEST,
                "message": serializer.errors,
                "data": [{}]
            }, status=status.HTTP_400_BAD_REQUEST)
        except Exception as e:
            return Response({
                "status": status.HTTP_400_BAD_REQUEST,
                "message": str(e),
                "data": [{}]
            }, status=status.HTTP_400_BAD_REQUEST)
-----------------------------------------------------
class CartItemViewSet(generics.RetrieveAPIView):
    queryset = CartItem.objects.all()
    serializer_class = CartItemSerializer 
    # authentication_classes = [IsAuthenticated]
    
    def list(self, request, *args, **kwargs):
        try:
            queryset = self.filter_queryset(self.get_queryset())
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
        except Exception as e:
            return Response({
                "status": status.HTTP_400_BAD_REQUEST,
                "message": str(e),
                "data": []
            }, status=status.HTTP_400_BAD_REQUEST)
'''

# all possible Shopping Cart (E-commerce) conditions 

# task is to figure out
# when ever i initialize cart only one cart id is getting created everytime

'''
now i want to create a initilaize cart create method. the items should get added to cart and cart it id generated
in drf, if suppose i have a ecommerce website and a guest user is creating a cart,
then where should that cart id be stored? If suppose in django sessions.
then how can the front end guy fetch that cart id?

and if i am using jwt token then the session is required?

if suppose i am making the api and cart id is generated and i don't want to 
save it in seesion storeage. then wehere to save the token. the front end 
guy is not invlolved right now
'''