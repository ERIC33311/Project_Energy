from django.db import models
class News(models.Model):
    date = models.DateField()
    title = models.CharField(max_length=255)
    description = models.TextField()
    class Meta:
        db_table = 'news'  
    def __str__(self):
        return self.title

class Solution(models.Model):
    date_range = models.CharField(max_length=50)
    title = models.CharField(max_length=255)
    description = models.TextField()
    link = models.CharField(max_length=500, blank=True, null=True)
    class Meta:
        db_table = 'solutions'  
    def __str__(self):
        return self.title