# main/models.py

from django.contrib.auth.models import AbstractBaseUser, PermissionsMixin
from django.db import models

class CustomUser(AbstractBaseUser, PermissionsMixin):
    email = models.EmailField(unique=True)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)

    USERNAME_FIELD = 'first_name'
    REQUIRED_FIELDS = ['first_name', 'last_name']

    # Переопределяем связанные поля для групп и разрешений
    groups = models.ManyToManyField(
        'auth.Group',
        related_name='customuser_set',  # Изменяем related_name
        blank=True
    )
    user_permissions = models.ManyToManyField(
        'auth.Permission',
        related_name='customuser_permissions_set',  # Изменяем related_name
        blank=True
    )

    def __str__(self):
        return self.email