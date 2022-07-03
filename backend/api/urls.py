from django.urls import path
from .views import PostView
from rest_framework.routers import SimpleRouter

router = SimpleRouter()

router.register('', PostView, basename='post')

urlpatterns = router.urls
