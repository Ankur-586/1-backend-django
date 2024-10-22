from rest_framework import serializers,status

from .models import Cart, CartItem
from product.models import ProductVariants
from django.utils import timezone

from core.utils import CustomValidation

class CartItemSerializer(serializers.ModelSerializer):
    '''
    This serializer is being used in the CartSerializer Below
    '''
    variant = serializers.SerializerMethodField()
    variant_id = serializers.PrimaryKeyRelatedField(queryset=ProductVariants.objects.all(), write_only=True)
    # quantity = serializers.IntegerField()

    class Meta:
        model = CartItem
        fields = ['variant_id','variant']
    
    def get_variant(self, obj):
        '''
        obj : cart_item_id
        '''
        product_variant = obj.variant
        variant_name = product_variant.variant_name
        thumbnail = product_variant.images.first().image.url if product_variant.images.exists() else None
        price = product_variant.price
        quantity = obj.quantity
        item_total = obj.calculate_price()

        return {
            'id': product_variant.pk,
            'variant_title': variant_name,
            'thumbnail': thumbnail,
            'item_price': price,
            'quantity':quantity,
            'item_total':item_total
        }

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

class CartItemPostSerializer(serializers.ModelSerializer):
    variant = serializers.PrimaryKeyRelatedField(queryset=ProductVariants.objects.all(), write_only=True)
    quantity = serializers.IntegerField(required=False, default=1)
    
    class Meta:
        model = CartItem
        fields = ['variant', 'quantity']
    
    def validate_quantity(self, value):
        if value is None:
            raise CustomValidation("Quantity is required",)
        if value < 1:
            raise CustomValidation("Quantity must be at least 1.", status_code=status.HTTP_400_BAD_REQUEST)
        elif value > 5:
            raise CustomValidation("Quantity can't be at more than 5", status_code=status.HTTP_400_BAD_REQUEST)
        return value
    
    def validate_variant(self, data):
        print('value:',data)
        # if not ProductVariants.objects.filter(pk=111).exists():
        #     raise CustomValidation("No product with the given ID was found.", status_code=status.HTTP_400_BAD_REQUEST)
        # return value
    
    # def validate(self, data):
    #     print(data)
    #     variant_id = data.get('variant')
    #     print(variant_id)
    #     variant = ProductVariants.objects.filter(pk=variant_id).exists()
        
    #     if not variant.id:
    #         raise CustomValidation("No product with the given ID was found.")

    #     if not variant.is_active:
    #         raise CustomValidation("The selected variant is out of stock.")
        
    #     return data

    def to_internal_value(self, data):
        variant_id = data.get('variant_id')
        print(variant_id)
        if not ProductVariants.objects.filter(pk=variant_id).exists():
            raise CustomValidation("No product with the given id was found",status_code=status.HTTP_400_BAD_REQUEST)
        return super().to_internal_value(data)
    
    # def validate(self, data):
    #     variant_id = data.get('variant_id')
    #     variant = ProductVariants.objects.get(pk=variant_id.id)
    #     if variant.is_active == False:
    #         raise CustomValidation("The selected variant is out of stock.")
    #     return data

'''
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
'''
# '''
# cart functionality in drf without using session: 
# case 1: if cart is created when there is no user associated with it.
# case 2: if cart is created and then later bind a user to that perticular cart
# ------------------------------------------------------

# i dont have region id in my db. i will add later. but for future
# please make some provision that i can add it later