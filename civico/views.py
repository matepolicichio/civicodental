from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request, 'civico/index.html')

def servicios(request):
    return render(request, 'civico/servicios.html')

def promociones(request):
    return render(request, 'civico/promociones.html')

def nosotros(request):
    return render(request, 'civico/nosotros.html')

def contacto(request):
    return render(request, 'civico/contacto.html')