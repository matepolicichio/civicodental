from django import forms
from .models import Post, Comment
from ckeditor.widgets import CKEditorWidget

class PostForm(forms.ModelForm):
    class Meta:
        model = Post
        fields = ('title',
                  'header_image',
                  'title_tag',
                  'snippet',
                  'body',
                  'category',
                  'tags',
                  'calltoaction',
                  'calltoaction_is_mainpage_enabled',
                  'post_is_visible')
    
        widgets = {
            'header_image': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'title': forms.TextInput(attrs={'class': 'form-control'}),
            'title_tag': forms.TextInput(attrs={'class': 'form-control'}),
            'snippet': forms.TextInput(attrs={'class':'form-control'}),
            'body': forms.Textarea(attrs={'class': 'form-control'}),
            'category': forms.Select(attrs={'class': 'form-control'}),
            'tags': forms.SelectMultiple(attrs={'class': 'form-control'}),
            'calltoaction': forms.Select(attrs={'class': 'form-control'}),
            'calltoaction_is_mainpage_enabled': forms.CheckboxInput(attrs={'class': 'form-check-input'}),
            'post_is_visible': forms.CheckboxInput(attrs={'class': 'form-check-input'}),            
        }