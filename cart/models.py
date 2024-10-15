from django.db import models
import uuid
from django.contrib.auth import get_user_model
from django.core.exceptions import ValidationError

from product.models import ProductVariants

User = get_user_model()

class Cart(models.Model):
    cart_id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    user = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return str(self.cart_id)
    
    class Meta:
        ordering = ['-created_at']
    
class CartItem(models.Model):
    cart_item_id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    cart_id = models.ForeignKey(Cart, on_delete=models.CASCADE, related_name='cart_items')
    variant = models.ForeignKey(ProductVariants, on_delete=models.CASCADE)
    quantity = models.IntegerField(default=1)
    price = models.IntegerField(default = 0)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return str(self.cart_item_id)
    
    def calculate_price(self):
        return self.quantity * self.price
    
    # def clean(self):
    #     # Fetch the product variant and validate quantity
    #     product = self.variant
    #     print(';fafqf',product)
    #     if not (1 <= self.quantity <= product.quantity):
    #         raise ValidationError(f"Quantity must be between {1} and {product.quantity}.")
    
'''
order = Order.objects.create(
    user=cart.user,
    total_amount=0,  # Calculate this based on cart items
    shipping_address="User's shipping address",
    payment_method="Selected payment method",
)

# Transfer CartItems to OrderItems
cart_items = CartItem.objects.filter(cart=cart)

for cart_item in cart_items:
    OrderItem.objects.create(
        order=order,
        product=cart_item.product,
        quantity=cart_item.quantity,
        price=cart_item.product.price  # Assuming price is stored in Product model
    )

# Calculate total amount for the order
order.total_amount = sum(item.price * item.quantity for item in order.orderitem_set.all())
order.save()

# Clean up: Delete Cart and CartItems
cart_items.delete()
cart.delete()
'''