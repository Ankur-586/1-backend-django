from rest_framework import viewsets, status, generics
from rest_framework.response import Response

from .models import Cart, CartItem
from .serializers import CartSerializer, CartItemSerializer, CartItemPostSerializer
from user_auth.authentication import IsAuthenticated

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

class CartItemPostSet(viewsets.ModelViewSet):
    
    queryset = CartItem.objects.all()
    serializer_class = CartItemPostSerializer 
    # authentication_classes = [IsAuthenticated]
    
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
    
    def get_success_headers(self, data):
        # Helper method to get headers for the response (if needed)
        return {}

# all possible Shopping Cart (E-commerce) conditions 

# task is to figure out
# when ever i initialize cart only one cart id is getting created everytime

'''
in drf, if suppose i have a ecommerce website and a guest user is creating a cart,
then where should that cart id be stored? If suppose in django sessions.
then how can the front end guy fetch that cart id?

and if i am using jwt token then the session is required?

if suppose i am making the api and cart id is generated and i don't want to 
save it in seesion storeage. then wehere to save the token. the front end 
guy is not invlolved right now
'''