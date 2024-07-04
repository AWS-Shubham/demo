from django.urls import path
from djapp import views

urlpatterns = [
    path('', views.home),
]