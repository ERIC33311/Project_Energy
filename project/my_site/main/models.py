from django.db import models
class News(models.Model):
    date = models.DateField()
    title = models.CharField(max_length=255)
    description = models.TextField()

    class Meta:
        db_table = 'news'  # Указываем правильное имя таблицы в базе данных

    def __str__(self):
        return self.title


from django.db import models

class Solution(models.Model):
    date_range = models.CharField(max_length=50)
    title = models.CharField(max_length=255)
    description = models.TextField()
    phone_number = models.CharField(max_length=20, blank=True, null=True)

    class Meta:
        db_table = 'solutions'  # Указываем имя таблицы вручную

    def __str__(self):
        return self.title