from django.contrib import admin
from .models import Post, Comment, Category, Tag, Page, CallToAction, PageList, SectionList, SectionSelection

admin.site.register(Comment)
admin.site.register(Category)
admin.site.register(Tag)


class PageListAdmin(admin.ModelAdmin):
    def get_list_display(self, request):
        return [field.name for field in PageList._meta.fields]

admin.site.register(PageList, PageListAdmin)


class SectionListAdmin(admin.ModelAdmin):
    def get_list_display(self, request):
        return [field.name for field in SectionList._meta.fields]

admin.site.register(SectionList, SectionListAdmin)


class SectionSelectionAdmin(admin.ModelAdmin):
    def get_list_display(self, request):
        return [field.name for field in SectionSelection._meta.fields]

admin.site.register(SectionSelection, SectionSelectionAdmin)

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