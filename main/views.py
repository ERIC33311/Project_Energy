from django.shortcuts import render, redirect

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
    sort_field = request.GET.get('sort_field', 'date')  
    sort_order = request.GET.get('sort_order', 'desc')  
    if sort_order == 'asc':
        sort_field = sort_field  
    else:
        sort_field = f'-{sort_field}' 
    news_items = News.objects.all().order_by(sort_field)
    return render(request, 'news/news.html', {'news_items': news_items})

from django.shortcuts import render
from .models import Solution
def solutions_view(request):
    sort_field = request.GET.get('sort_field', 'title')  
    sort_order = request.GET.get('sort_order', 'asc')  
    if sort_order == 'asc':
        solutions = Solution.objects.all().order_by(sort_field)
    else:
        solutions = Solution.objects.all().order_by(f'-{sort_field}')  
    return render(request, 'solutions/solutions.html', {'solutions_items': solutions})