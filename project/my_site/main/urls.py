from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('about/', views.about, name='about'),
    path('solutions/', views.solutions_view, name='solutions'),
    path('news/', views.news_view, name='news'),
    path('contacts/', views.contacts, name='contacts'),
]
