from django.db import models


class Post(models.Model):
    title = models.CharField(verbose_name='title of the post', max_length=250)
    image_url = models.URLField(null=True, verbose_name='image url')
    text = models.TextField(verbose_name='url of the post image')
    created_on = models.DateField(
        verbose_name='time created', auto_now_add=True)
    edited_on = models.DateField(verbose_name='time edited', auto_now=True)
