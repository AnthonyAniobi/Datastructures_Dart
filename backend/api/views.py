from django.shortcuts import render
from rest_framework import viewsets
from .serializers import PostSerializer
from post.models import Post

class PostView(viewsets.ModelViewSet):
    queryset= Post.objects.all()
    serializer_class = PostSerializer
    