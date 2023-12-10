import os
from django.db import models
from django.conf import settings


class Section(models.Model):
    SECTION_CHOICES = [
        ('civico/section/about.html', 'main - nosotros'),
        ('civico/section/call2action.html', 'main - llámanos'),
        ('civico/section/contact.html', 'main - contacto'),
        ('civico/section/faq.html', 'main - preguntas frecuentes'),
        ('civico/section/features.html', 'main - distintivos'),
        ('civico/section/hero.html', 'main - hero'),
        ('civico/section/portfolio.html', 'main - experiencia'),
        ('civico/section/stats.html', 'main - estadísticas'),
        ('civico/section/team.html', 'main - equipo'),
        ('civico/section/testimonials.html', 'main - testimonios'),
        ('promociones/section/posts.html', 'promociones - listado'),
        ('services/section/posts.html', 'servicios - listado'),
        # Add more choices as needed
    ]

    name = models.CharField(max_length=255)
    html_id = models.CharField(max_length=255, unique=True)
    section_path = models.CharField(max_length=255, choices=SECTION_CHOICES, unique=True)

    def __str__(self):
        return f"{self.section_path} | {self.name}"
    

class Page(models.Model):
    TEMPLATE_CHOICES = [
        ('civico/index.html', 'civico - onepage'),
        ('promociones/home.html', 'promociones - listado'),
        ('promociones/article_details.html', 'promoción - detalle'),
        ('services/home.html', 'servicios - listado'),
        ('services/article_details.html', 'servicios - detalle'),
        # Add more choices as needed
    ]

    name = models.CharField(max_length=255, unique=True)
    template_path = models.CharField(max_length=255, choices=TEMPLATE_CHOICES, unique=True)
    section_selection = models.ManyToManyField(Section, through='SectionSelection')

    def __str__(self):
        return f"{self.template_path} | {self.name}"


class SectionSelection(models.Model):
    page = models.ForeignKey(Page, on_delete=models.CASCADE)
    section = models.ForeignKey(Section, on_delete=models.CASCADE)
    sort_order = models.IntegerField()
    is_visible = models.BooleanField(default=True)
    nav_enabled = models.BooleanField(default=False)

    class Meta:
        ordering = ['sort_order']
        # Ensure that the combination of 'page' and 'section' is unique
        unique_together = ['page', 'section']


# class SectionClass(models.Model):
#     name = models.CharField(max_length=255)

#     def __str__(self):
#         return self.name

# class Section(models.Model):
#     name = models.CharField(max_length=255)
#     template_name = models.CharField(max_length=255)
#     is_visible = models.BooleanField(default=True)
#     html_id = models.CharField(max_length=255, blank=True, null=True)
#     section_class = models.ForeignKey(SectionClass, on_delete=models.SET_NULL, blank=True, null=True)
#     sort_order = models.IntegerField(default=0)

#     def __str__(self):
#         return self.name

#     class Meta:
#         ordering = ['sort_order']

#     def get_full_path(self):
#         app_name = self.__module__.split('.')[0]
#         full_path = os.path.join(settings.BASE_DIR, app_name,'templates',app_name,'section', self.relative_path)
#         return full_path

#     def file_exists(self):
#         full_path = self.get_full_path()
#         return os.path.isfile(full_path)


class Contact(models.Model):
    nombre = models.CharField(max_length=100)
    email = models.EmailField()
    titulo = models.CharField(max_length=200)
    mensaje = models.TextField()

    def __str__(self):
        return self.email