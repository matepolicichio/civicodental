import os
from django.db import models
from django.conf import settings

class SectionClass(models.Model):
    name = models.CharField(max_length=255)

    def __str__(self):
        return self.name

class Section(models.Model):
    name = models.CharField(max_length=255)
    relative_path = models.CharField(max_length=255)
    is_visible = models.BooleanField(default=True)
    html_id = models.CharField(max_length=255, blank=True, null=True)
    section_class = models.ForeignKey(SectionClass, on_delete=models.SET_NULL, blank=True, null=True)
    sort_order = models.IntegerField(default=0)

    def __str__(self):
        return self.name

    class Meta:
        ordering = ['sort_order']

    def get_full_path(self):
        app_name = self.__module__.split('.')[0]
        full_path = os.path.join(settings.BASE_DIR, app_name,'templates',app_name,'section', self.relative_path)
        print(full_path)
        return full_path

    def file_exists(self):
        full_path = self.get_full_path()
        print(full_path)
        return os.path.isfile(full_path)


class Contact(models.Model):
    nombre = models.CharField(max_length=100)
    email = models.EmailField()
    titulo = models.CharField(max_length=200)
    mensaje = models.TextField()

    def __str__(self):
        return self.email