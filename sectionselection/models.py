from django.db import models

class SectionEnabled(models.Model):
    SECTION_CHOICES = [
        ('civico/section/about.html', 'main - nosotros'),
        ('calltoaction/section/call2action.html', 'calltoaction - llámanos'),
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
    ]

    name = models.CharField(max_length=255)
    html_id = models.CharField(max_length=255, unique=True)
    section_path = models.CharField(max_length=255, choices=SECTION_CHOICES, unique=True)

    def __str__(self):
        return f"{self.get_section_path_display()}"


class PageEnabled(models.Model):
    TEMPLATE_CHOICES = [
        ('civico/index.html', 'civico - mainpage'),
        ('services/home.html', 'servicios - listado'),
        ('services/article_details.html', 'servicios - detalle'),
        ('promociones/home.html', 'promociones - listado'),
        ('promociones/article_details.html', 'promociones - detalle'),
    ]

    name = models.CharField(max_length=255)
    template_path = models.CharField(max_length=255, choices=TEMPLATE_CHOICES, unique=True)
    section_selection = models.ManyToManyField(SectionEnabled, through='SectionSelection')

    def __str__(self):
        return f"{self.get_template_path_display()}"


class SectionSelection(models.Model):
    page = models.ForeignKey(PageEnabled, on_delete=models.CASCADE)
    section = models.ForeignKey(SectionEnabled, on_delete=models.CASCADE)
    sort_order = models.IntegerField()
    is_visible = models.BooleanField(default=True)
    nav_enabled = models.BooleanField(default=False)

    class Meta:
        ordering = ['sort_order']
        # Ensure that the combination of 'page' and 'section' is unique
        unique_together = ['page', 'section']