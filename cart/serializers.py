from rest_framework import serializers
from .models import Cart, CartItem
from product.models import ProductVariants
from django.utils import timezone

from core.utils import CustomValidation

class CartItemSerializer(serializers.ModelSerializer):
    variant = serializers.SerializerMethodField()
    variant_id = serializers.PrimaryKeyRelatedField(queryset=ProductVariants.objects.all(), write_only=True)
    # quantity = serializers.IntegerField()

    class Meta:
        model = CartItem
        fields = ['variant_id','variant','quantity']
    
    def get_variant(self, obj):
        '''
        obj : cart_item_id
        '''
        product_variant = obj.variant
        variant_name = product_variant.variant_name
        thumbnail = product_variant.images.first().image.url if product_variant.images.exists() else None

        return {
            'id': product_variant.pk,
            'variant_title': variant_name,
            'thumbnail': thumbnail
        }

class CartItemPostSerializer(serializers.ModelSerializer):
    variant_id = serializers.PrimaryKeyRelatedField(queryset=ProductVariants.objects.all(), write_only=True)
    quantity = serializers.IntegerField(required=False, default=1)
    
    class Meta:
        model = CartItem
        fields = ['variant_id', 'quantity']
    
    def validate_quantity(self, value):
        if value is None:
            raise CustomValidation("Quantity is required")
        if value < 1:
            raise CustomValidation("Quantity must be at least 1.")
        elif value > 5:
            raise CustomValidation("Quantity can't be at more than 5")
        return value
    
    def to_internal_value(self, data):
        variant_id = data.get('variant_id')
        if not ProductVariants.objects.filter(pk=variant_id).exists():
            raise CustomValidation("No product with the given id was found")
        return super().to_internal_value(data)
    
    def validate(self, data):
        variant_id = data.get('variant_id')
        variant = ProductVariants.objects.get(pk=variant_id.pk)
        if variant.availability_status == False:
            raise CustomValidation("The selected variant is out of stock.")
        return data

    def create(self, validated_data):
        request = self.context['request']
        user = request.user if request.user.is_authenticated else None
        print(user)
        if user is None:
            session = request.session
            cart_id = session.get('cart_id', None)
            if cart_id:
                cart = Cart.objects.get(cart_id=cart_id)
            else:
                cart = Cart.objects.create()
                session['cart_id'] = str(cart.cart_id)
        else:
            cart, created = Cart.objects.get_or_create(user=user)
            
        cart_items = []
        variant = validated_data.pop('variant_id')  # Retrieve and remove variant_id from item_data

        validated_data['cart_id'] = cart
        validated_data['variant'] = variant
        validated_data['price'] = validated_data.get('price', variant.price)
        
        cart_item = CartItem(**validated_data)
        cart_items.append(cart_item)

        CartItem.objects.bulk_create(cart_items)
        
        # Prepare the response data
        response_data = [{
            "cart_id": cart.cart_id,
            "variant_id": cart_item.variant.pk,
            "variant_name": cart_item.variant.variant_name,
            "variant_image": cart_item.variant.images.first().image.url if cart_item.variant.images.exists() else None, # i have used related_name property
            "quantity": cart_item.quantity,
            "price": cart_item.price,
            "total_price": cart_item.calculate_price()
        } for cart_item in cart_items]

        return response_data
    
class CartSerializer(serializers.ModelSerializer):
    cart_items = CartItemSerializer(many=True)
    user = serializers.SerializerMethodField()
    created_at = serializers.SerializerMethodField()
    
    class Meta:
        model = Cart
        fields = ['cart_id', 'created_at', 'updated_at', 'user','cart_items']
    
    def get_created_at(self, obj):
        """
        This function converts timestamp in ISO 8601 format to a properly formatted datetime string.
        """
        if obj.created_at:
            local_time = timezone.localtime(obj.created_at)
            return local_time.strftime('%Y-%m-%d %H:%M:%S')
        return 'None'
    
    def get_user(self, obj):
        user_info = obj.user
        if user_info:
          return {
            'id': user_info.id,
            'user_name': user_info.username,
          }
        return None
      


# '''
# cart functionality in drf without using session: 
# case 1: if cart is created when there is no user associated with it.
# case 2: if cart is created and then later bind a user to that perticular cart
# ------------------------------------------------------
# def create(self, validated_data):
#         request = self.context['request']
#         user = request.user if request.user.is_authenticated else None

#         # Get or create the cart
#         if user is None:
#             session = request.session
#             cart_id = session.get('cart_id', None)
#             if cart_id:
#                 cart = Cart.objects.get(cart_id=cart_id)
#             else:
#                 cart = Cart.objects.create()
#                 session['cart_id'] = str(cart.cart_id)
#         else:
#             cart, created = Cart.objects.get_or_create(user=user)

#         # Initialize a list to hold the CartItem instances
#         cart_items = []

#         # Handle both single object and list of objects
#         if isinstance(validated_data, dict):
#             item_data = validated_data
#             variant_id = item_data.pop('variant_id')
#             variant = ProductVariants.objects.get(pk=variant_id)  # Correctly get variant by ID
#             item_data['cart_id'] = cart
#             item_data['variant'] = variant
#             item_data['price'] = item_data.get('price', variant.price)
#             cart_item = CartItem(**item_data)
#             cart_items.append(cart_item)
#         elif isinstance(validated_data, list):
#             for item_data in validated_data:
#                 if isinstance(item_data, dict):
#                     variant_id = item_data.pop('variant_id')
#                     variant = ProductVariants.objects.get(pk=variant_id)  # Correctly get variant by ID
#                     item_data['cart_id'] = cart
#                     item_data['variant'] = variant
#                     item_data['price'] = item_data.get('price', variant.price)
#                     cart_item = CartItem(**item_data)
#                     cart_items.append(cart_item)
#                 else:
#                     raise ValueError(f"Expected dict, got {type(item_data)}")
#         else:
#             raise ValueError("Expected validated_data to be a dict or list of dicts.")

#         # Bulk create the CartItem instances
#         CartItem.objects.bulk_create(cart_items)
#         return cart_items
# ------------------------------------------------------
# in this what is happening is 
# {
#   "items": [
#     {
#       "variant_id": 1,  // Replace with actual variant ID
#       "quantity": 1
#     },
#     {
#        "variant_id": 3,  // Replace with actual variant ID
#       "quantity": 4
#     }
#   ]
# }

# def create(self, validated_data):
#         request = self.context['request']
#         user = request.user if request.user.is_authenticated else None # user is none currently 
#         print('coming from serializers',user)
#         if user is None:
#             session = request.session
#             cart_id = session.get('cart_id', None)
#             if cart_id:
#                 cart = Cart.objects.get(cart_id=cart_id)
#             else:
#                 cart = Cart.objects.create()
#                 session['cart_id'] = str(cart.cart_id)
#         else:
#             cart, created = Cart.objects.get_or_create(user=user)
#         # Fetch the variant instance from validated data
#         variant = validated_data.pop('variant_id')  # Retrieve and remove variant_id from validated_data
#         validated_data['cart_id'] = cart
#         validated_data['variant'] = variant
#         validated_data['price'] = validated_data.get('price', variant.price)
        
#         cart_item = CartItem.objects.create(**validated_data)
#         return cart_item
# '''
# [
#     {
#         "status": 201,
#         "message": "Cart Item Created Successfully",
#         "data": {
#             "variant": {
#                 "id": 1,
#                 "variant_title": "Samsung s24 ultra - 64 gb",
#                 "thumbnail": "/media/products/2024/07/19/atta_5kg_back_eYYYo9e.webp"
#             },
#             "quantity": 1
#         }
#     },
#     {
#         "status": 201,
#         "message": "Cart Item Created Successfully",
#         "data": {
#             "variant": {
#                 "id": 3,
#                 "variant_title": "Samsung Ultra TV HD",
#                 "thumbnail": "/media/products/2024/07/21/download.jpg"
#             },
#             "quantity": 4
#         }
#     }
# ]

# class CartItemSerializer(serializers.ModelSerializer):
#     variant = serializers.SerializerMethodField()
#     variant_id = serializers.PrimaryKeyRelatedField(queryset=ProductVariants.objects.all(), write_only=True)
    
#     class Meta:
#         model = CartItem
#         fields = ['variant_id','variant','quantity']
    
#     def get_variant(self, obj):
#         '''
#         obj : cart_item_id
#         '''
#         product_variant = obj.variant
#         variant_name = product_variant.variant_name
#         thumbnail = product_variant.images.first().image.url if product_variant.images.exists() else None

#         return {
#             'id': product_variant.pk,
#             'variant_title': variant_name,
#             'thumbnail': thumbnail
#         }
    
#     def validate(self, data):
#         quantity = data.get('quantity')
#         if quantity < 1:
#             raise serializers.ValidationError("Quantity must be at least 1.")
#         elif quantity > 5:
#             raise serializers.ValidationError("Quantity can't be at more than 5")
#         return data
    
#     def create(self, validated_data):
#         request = self.context['request']
#         user = request.user if request.user.is_authenticated else None
#         if user is None:
#             session = request.session
#             cart_id = session.get('cart_id', None)
#             if cart_id:
#                 cart = Cart.objects.get(cart_id=cart_id)
#             else:
#                 cart = Cart.objects.create()
#                 session['cart_id'] = str(cart.cart_id)
#         else:
#             cart, created = Cart.objects.get_or_create(user=user)
            
#         # Fetch the variant instance from validated data
#         variant = validated_data.pop('variant_id')  # Retrieve and remove variant_id from validated_data
#         validated_data['cart_id'] = cart
#         validated_data['variant'] = variant
#         validated_data['price'] = validated_data.get('price', variant.price)
        
#         cart_item = CartItem.objects.create(**validated_data)
#         return cart_item
      
# class CartItemViewSet(viewsets.ModelViewSet):
#     queryset = CartItem.objects.all()
#     serializer_class = CartItemSerializer 
            
#     def create(self, request, *args, **kwargs):
#         try:
#             serializer = self.get_serializer(data=request.data)
#             if serializer.is_valid():
#                 self.perform_create(serializer)
#                 headers = self.get_success_headers(serializer.data)
#                 return Response({
#                     "status": status.HTTP_201_CREATED,
#                     "message": 'Cart Item Created Successfully',
#                     "data": serializer.data
#                 }, status=status.HTTP_201_CREATED, headers=headers)
#             return Response({
#                 "status": status.HTTP_400_BAD_REQUEST,
#                 "message": serializer.errors,
#                 "data": []
#             }, status=status.HTTP_400_BAD_REQUEST)
#         except Exception as e:
#             return Response({
#             "status": status.HTTP_400_BAD_REQUEST,
#             "message": str(e),
#             "data": []
#         }, status=status.HTTP_400_BAD_REQUEST)
            
# currently i can post only 1 object but cart can hold n numbers of items.

# {
#     "region_id": "reg_01HBJS9WBK5R58KD5NA233GFEW",
#     "items": [{
#         "variant_id": "variant_01HESE42AJKPMD3H8A7YK0FWKE",
#         "quantity": 1
#     }]
# }
# i dont have region id in my db. i will add later. but for future
# please make some provision that i can add it later