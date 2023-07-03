from django.urls import path
from . import views

app_name = 'civico'
urlpatterns = [
    path('', views.index, name='index'),
    path('pepe/', views.servicios, name='servicios'),
    path('promociones/', views.promociones, name='promociones'),
    path('nosotros/', views.nosotros, name='nosotros'),
    path('contacto/', views.contacto, name='contacto'),
]


