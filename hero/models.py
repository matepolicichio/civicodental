from django.db import models
from django.core.exceptions import ValidationError

class Hero(models.Model):

    title = models.CharField(max_length=255, default="Cuidá tu sonrisa")
    description = models.TextField(
            null=True,
            blank=True,
            default="Las mejores coberturas, los mejores profesionales.<br>Elegí tu plan dental.",
            )

    background_image = models.ImageField(null=True, blank=True, upload_to="images/hero/", default=None)
    is_form_enabled = models.BooleanField(default=False)
    form_placeholder = models.CharField(max_length=255, default="Ingrese su email")
    form_value = models.CharField(max_length=100, default="Suscribirme")

    is_enabled = models.BooleanField(default=True)
 
    def __str__(self):
        return self.title