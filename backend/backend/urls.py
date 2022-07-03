from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from .views import home_page


if(settings.DEBUG):
    urlpatterns = [
        path('admin/', admin.site.urls)
    ]
else:
    urlpatterns = [
        path('nwanaja-admin/', admin.site.urls)
    ]

urlpatterns = urlpatterns + [
    path('', home_page),
    path('api-auth', include('rest_framework.urls')),
    path('api/', include('api.urls')),
]
