from django.contrib import admin
from .models import Section, Contact, SectionClass

class SectionAdmin(admin.ModelAdmin):
    def get_list_display(self, request):
        return [field.name for field in Section._meta.fields]

admin.site.register(Section, SectionAdmin)

admin.site.register(Contact)
admin.site.register(SectionClass)