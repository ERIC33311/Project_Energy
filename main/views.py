from django.shortcuts import render, redirect
from .forms import CustomUserCreationForm
from django.contrib import messages
from django.contrib.auth import login
from django.contrib.auth import get_user_model
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm

# Ваши другие представления
def index(request):
    return render(request, "index/index.html")

def about(request):
    return render(request, "about/about.html")

def solutions(request):
    return render(request, "solutions/solutions.html")

def news(request):
    return render(request, "news/news.html")

def registration(request):
    return render(request, "registration/registration.html")

def register(request):
    if request.method == 'POST':
        form = CustomUserCreationForm(request.POST)
        if form.is_valid():
            form.save()  # Сохраняем пользователя
            return redirect('/')  # Перенаправляем на страницу входа
    else:
        form = CustomUserCreationForm()
    return render(request, 'registration/registration.html', {'form': form})