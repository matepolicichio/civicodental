from django.db import models
from django.contrib.auth.models import User
from django.urls import reverse
from datetime import datetime, date
from ckeditor.fields import RichTextField

from django.core.exceptions import ValidationError
from django.core.validators import RegexValidator



class SectionList(models.Model):
    SECTION_CHOICES = [
        ('services/section/posts.html', 'servicios - listado'),
        ('services/section/call2action.html', 'servicios - call to action'),
    ]

    name = models.CharField(max_length=255, default="_")
    html_id = models.CharField(max_length=255, unique=True)
    section_path = models.CharField(max_length=255, choices=SECTION_CHOICES, unique=True)

    def __str__(self):
        return f"{self.get_section_path_display()}"
    

class Page(models.Model):
    name = models.CharField(max_length=255, default="Servicios")
    description = models.TextField(null=True, blank=True)
    is_enabled = models.BooleanField(default=True)

    def __str__(self):
        return self.name


class PageList(models.Model):
    TEMPLATE_CHOICES = [
        ('services/home.html', 'servicios - listado'),
        ('services/article_details.html', 'servicios - detalle'),
    ]

    name = models.CharField(max_length=255, default="_")
    template_path = models.CharField(max_length=255, choices=TEMPLATE_CHOICES, unique=True)
    section_selection = models.ManyToManyField(SectionList, through='SectionSelection')

    def __str__(self):
        return f"{self.get_template_path_display()}"


class SectionSelection(models.Model):
    page = models.ForeignKey(PageList, on_delete=models.CASCADE)
    section = models.ForeignKey(SectionList, on_delete=models.CASCADE)
    sort_order = models.IntegerField()
    is_visible = models.BooleanField(default=True)
    nav_enabled = models.BooleanField(default=False)

    class Meta:
        ordering = ['sort_order']
        # Ensure that the combination of 'page' and 'section' is unique
        unique_together = ['page', 'section']


class Category(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name

class Tag(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name

def validate_numeric_whatsapp_number(value):
    if not value.isdigit():
        raise ValidationError('WhatsApp number must contain only numeric characters.')

class CallToAction(models.Model):

    title = models.CharField(max_length=255, default="Tu Salud Bucal es Nuestra Prioridad")
    description = models.TextField(
            null=True,
            blank=True,
            )
    
    whatsapp_number = models.CharField(
        max_length=20,
        null=True,
        blank=True,
        validators=[validate_numeric_whatsapp_number]
        )
    whatsapp_message = models.TextField(null=True, blank=True, default="Hola, me gustaría recibir más información...")
    btn_text = models.CharField(max_length=50, default="Agenda tu cita")

    background_image = models.ImageField(null=True, blank=True, upload_to="images/services/call2action/", default=None)
 
    def __str__(self):
        return self.title


class Post(models.Model):
    title = models.CharField(max_length=255)
    header_image = models.ImageField(null=True, blank=True, upload_to="images/services/", default=None)
    title_tag = models.CharField(max_length=255, default="Civico Dental")
    author = models.ForeignKey(User, related_name='service_author', on_delete=models.CASCADE) # change related_name to be unique
    body = RichTextField(blank=True, null=True)
    post_date = models.DateField(auto_now_add=True)
    snippet = models.CharField(max_length=255, null=True, blank=True)
    likes = models.ManyToManyField(User, related_name='services_post_likes') # change related_name to be unique
    category = models.ForeignKey(Category, on_delete=models.CASCADE, null=True, blank=True, related_name='articles')
    tags = models.ManyToManyField(Tag, blank=True)
    calltoaction = models.ForeignKey(CallToAction, on_delete=models.CASCADE, null=True, blank=True, related_name='call2action')
    calltoaction_is_mainpage_enabled = models.BooleanField(default=True)
    post_is_visible = models.BooleanField(default=True)

    def __str__(self):
        return self.title + ' | ' + str(self.author)
    
    def get_absolute_url(self):
        return reverse('services:home')


class Comment(models.Model):
    post = models.ForeignKey(Post, related_name='comments', on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    body = models.TextField()
    date_added = models. DateTimeField(auto_now_add=True)

    def __str__(self):
        return '%s - %s' % (self.post.title, self.name)