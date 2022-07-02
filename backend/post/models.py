from django.db import models

class Post(models.Model):
    title = models.CharField(max_length=250)
    image = models.ImageField()
    text = models.TextField()
    created_on = models.DateField(auto_now_add=True)
    edited_on = models.DateField(auto_now=True)
