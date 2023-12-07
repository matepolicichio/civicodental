from django.contrib import admin
from .models import Post, Comment, Category, Tag, Page

admin.site.register(Post)
admin.site.register(Comment)
admin.site.register(Category)
admin.site.register(Tag)
admin.site.register(Page)
