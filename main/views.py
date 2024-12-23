from django.shortcuts import render, redirect

# Ваши другие представления
def index(request):
    return render(request, "index/index.html")

def about(request):
    return render(request, "about/about.html")

def solutions(request):
    return render(request, "solutions/solutions.html")

def news(request):
    return render(request, "news/news.html")

def contacts(request):
    return render(request, "contacts/contacts.html")

from django.shortcuts import render
from .models import News

def news_view(request):
    sort_field = request.GET.get('sort_field', 'date')  # По умолчанию сортируем по дате
    sort_order = request.GET.get('sort_order', 'desc')  # По умолчанию убывание

    if sort_order == 'asc':
        sort_field = sort_field  # Без изменений
    else:
        sort_field = f'-{sort_field}'  # Добавляем '-' для убывания

    news_items = News.objects.all().order_by(sort_field)
    return render(request, 'news/news.html', {'news_items': news_items})

from django.shortcuts import render
from .models import Solution

def solutions_view(request):
    sort_field = request.GET.get('sort_field', 'title')  # Сортировка по title по умолчанию
    sort_order = request.GET.get('sort_order', 'asc')  # По умолчанию сортировка по возрастанию

    if sort_order == 'asc':
        solutions = Solution.objects.all().order_by(sort_field)
    else:
        solutions = Solution.objects.all().order_by(f'-{sort_field}')  # Сортировка по убыванию

    return render(request, 'solutions/solutions.html', {'solutions_items': solutions})