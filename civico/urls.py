from django.urls import path
from . import views

app_name = 'civico'
urlpatterns = [
    path('', views.index, name='index'),
]


