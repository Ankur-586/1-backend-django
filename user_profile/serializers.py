from user_auth.models import CustomUser, Role
from user_auth.serializers import UserSerializer
from .models import UserProfile

from rest_framework import serializers


class UserProfileSerialziers(serializers.ModelSerializer):
    user = serializers.PrimaryKeyRelatedField(queryset=CustomUser.objects.all())
    class Meta:
        model = UserProfile
        fields = '__all__'
        
# if suppose i have a drf application. And in that i have two apps.
# 1. user_auth
#    with follwoing models 
#    class CustomUser(AbstractBaseUser, PermissionsMixin):
#     user_role = models.ForeignKey(Role, on_delete=models.SET_NULL, null=True, blank=True)
#     email = models.EmailField(unique=True)
#     phone_number = models.CharField(unique=True, blank=True, null=True)
#     username = models.CharField(max_length=150, unique=True)
#     first_name = models.CharField(max_length=50, blank=True)
#     last_name = models.CharField(max_length=50, blank=True)
#     last_login = models.DateTimeField(null=True, blank=True) 
#     date_joined = models.DateTimeField(default=timezone.now)
#     is_active = models.BooleanField(default=True)
#     is_staff = models.BooleanField(default=False)
#     is_superuser = models.BooleanField(default=False)

#     objects = CustomUserManager()

#     USERNAME_FIELD = 'email'
#     REQUIRED_FIELDS = ['username']

#     def __str__(self):
#         return self.username
    
#     @property
#     def full_name(self):
#         return f"{self.first_name} {self.last_name}".strip()
    
#     class Role(models.Model):
#     name = models.CharField(max_length=15, unique=True)
#     description = models.TextField(blank=True, null=True)

#     def __str__(self):
#         return self.name
    
# 2. user_profile
#    with follwoing models 
#    class UserProfile(models.Model):
#     user = models.OneToOneField(User, on_delete=models.CASCADE)
#     profile_image = models.ImageField(upload_to="user_profile")
#     phone_number = models.CharField(max_length=20, blank=True, null=True)
#     created_at = models.DateTimeField(auto_now_add=True)
#     updated_at = models.DateTimeField(auto_now=True)

#     def __str__(self):
#         return f'{self.user.username} Profile'
    
#     ADDRESS_TYPES = (
#             ('home', _('Home')),
#             ('work', _('Work')),
#             ('other', _('Other')),
#         )

#     class User_Address(models.Model):
#         user = models.ForeignKey(UserProfile,on_delete=models.CASCADE)
#         address_type = models.CharField(max_length=10, choices=ADDRESS_TYPES)
#         house_number = models.CharField(max_length=10)
#         address_line_1 = models.CharField(max_length=255)
#         address_line_2 = models.CharField(max_length=255)
#         city = models.CharField(max_length=50)
#         state = models.CharField(max_length=50)
#         postal_code = models.CharField(max_length=6)
#         country = models.CharField(default='India',max_length=5)

# and my user is getitng authenticated through simple jwt.
# now iw want that user should do crud with its own proflew 