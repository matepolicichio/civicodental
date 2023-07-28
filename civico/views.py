from django.shortcuts import render

from .forms import ContactForm

# Create your views here.
def index(request):
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            form.save()
            return render(request, 'civico/index.html',{'sent_message': True})
    else:
        form = ContactForm()
    return render(request, 'civico/index.html', {'form': form})