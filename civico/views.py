from django.shortcuts import render

from .forms import ContactForm
from .models import Section

# Create your views here.
def index(request):
    visible_sections = Section.objects.filter(is_visible=True)

    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            form.save()
            return render(request, 'civico/index.html',{'sent_message': True})
    else:
        form = ContactForm()

    return render(request, 'civico/index.html', {'visible_sections': visible_sections, 'form': form})
3