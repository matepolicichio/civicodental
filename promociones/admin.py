from django.contrib import admin
from .models import Post, Category, Tag, Page, CallToAction


admin.site.register(Category)
admin.site.register(Tag)

class PageAdmin(admin.ModelAdmin):
    def get_list_display(self, request):
        return [field.name for field in Page._meta.fields]

admin.site.register(Page, PageAdmin)

class CallToActionAdmin(admin.ModelAdmin):
    def get_list_display(self, request):
        return [field.name for field in CallToAction._meta.fields]

admin.site.register(CallToAction, CallToActionAdmin)

class PostAdmin(admin.ModelAdmin):
    def get_list_display(self, request):
        return [field.name for field in Post._meta.fields if field.name != 'body']

admin.site.register(Post, PostAdmin)

