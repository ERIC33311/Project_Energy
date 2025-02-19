from django.contrib import admin
from .models import Solution, News


@admin.register(News)
class NewsAdmin(admin.ModelAdmin):
    list_display = ('date', 'title', 'description') 
    list_filter = ('date',) 
    search_fields = ('title', 'description')  


@admin.register(Solution)
class SolutionAdmin(admin.ModelAdmin):
    list_display = ('date_range', 'title', 'description', 'link') 
    search_fields = ('title', 'description', 'link') 