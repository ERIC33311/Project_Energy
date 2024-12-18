# main/admin.py

from django.contrib import admin
from .models import CustomUser

# Зарегистрируйте CustomUser в админке
admin.site.register(CustomUser)