from django.test import TestCase
from django.contrib.auth import get_user_model
from .models import Role

User = get_user_model()

class CustomUserModelTest(TestCase):
    
    def setUp(self):
        self.role = Role.objects.create(name='Admin', description='Administrator role')
        self.user = User.objects.create_user(
            email='test@example.com',
            username='testuser',
            password='password',
            user_role=self.role
        )
    
    def test_user_creation(self):
        self.assertTrue(isinstance(self.user, User))
        self.assertEqual(str(self.user), 'testuser')
    
    def test_full_name(self):
        self.user.first_name = 'John'
        self.user.last_name = 'Doe'
        self.user.save()
        self.assertEqual(self.user.full_name, 'John Doe')
    
    def test_user_role(self):
        self.assertEqual(self.user.user_role, self.role)