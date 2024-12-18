from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('about/', views.about, name='about'),
    path('solutions/', views.solutions, name='solutions'),
    path('news/', views.news, name='news'),
    path('registration/', views.register, name='registration'),
    path('login/', views.login, name='login'),
]
