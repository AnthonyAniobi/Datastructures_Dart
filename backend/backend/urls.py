from django.contrib import admin
from django.urls import path, include
from django.conf import settings


if(settings.DEBUG):
    urlpatterns = [
        path('admin/', admin.site.urls)
    ]
else:
    urlpatterns = [
        path('nwanaja-admin/', admin.site.urls)
    ]

urlpatterns = urlpatterns + [
    path('api-auth', include('rest_framework.urls')),
    path('api/', include('api.urls')),
]
