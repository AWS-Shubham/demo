from django.urls import path, include
from djapp import views

urlpatterns = [
    path('', views.home),
]