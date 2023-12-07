from django.shortcuts import render
from .forms import ContactForm
from promociones.models import Post as PromoPost
from promociones.models import Page as PromoPage
from services.models import Post as ServicePost
from services.models import Page as ServicePage
from .models import SectionSelection
import random

# Create your views here.
def index(request):
    nav_sections = SectionSelection.objects.filter(        
        nav_enabled = True,
        is_visible=True,
        page__template_path='civico/index.html'
    )

    visible_sections = SectionSelection.objects.filter(
        is_visible=True,
        page__template_path='civico/index.html'
    )
    
    promo_posts = PromoPost.objects.order_by('-post_date')
    service_posts = ServicePost.objects.order_by('-post_date')

    enabled_promo_page_content = PromoPage.objects.filter(is_enabled=True)
    promo_page_random_content = None
    if enabled_promo_page_content.exists():
        promo_page_random_content = random.choice(enabled_promo_page_content)

    enabled_service_page_content = ServicePage.objects.filter(is_enabled=True)    
    service_page_random_content = None
    if enabled_service_page_content.exists():
        service_page_random_content = random.choice(enabled_service_page_content)

    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            form.save()
            return render(request, 'civico/index.html',{'sent_message': True})
    else:
        form = ContactForm()

    context = {
        'nav_sections': nav_sections,
        'visible_sections': visible_sections,
        'promo_posts': promo_posts,
        'service_posts': service_posts,
        'promo_page_random_content': promo_page_random_content,
        'service_page_random_content': service_page_random_content,        
        'form': form,
    }

    template_name = 'civico/index.html'

    return render(request, template_name, context)