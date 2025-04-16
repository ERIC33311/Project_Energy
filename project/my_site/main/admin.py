from django.contrib import admin
from .models import Solution, News

# Настройка для модели News
@admin.register(News)
class NewsAdmin(admin.ModelAdmin):
    list_display = ('date', 'title', 'description')  # Поля для отображения в таблице
    list_filter = ('date',)  # Фильтрация по дате
    search_fields = ('title', 'description')  # Поиск по заголовку и описанию

# Настройка для модели Solution
@admin.register(Solution)
class SolutionAdmin(admin.ModelAdmin):
    list_display = ('date_range', 'title', 'description', 'phone_number')  # Поля для отображения в таблице
    list_filter = ('date_range',)  # Фильтрация по диапазону дат
    search_fields = ('title', 'description', 'phone_number')  # Поиск по заголовку, описанию и номеру телефона