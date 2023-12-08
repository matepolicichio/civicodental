import os
from django.shortcuts import render, get_object_or_404
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from .models import Post, Comment, Category, Tag, Page
from civico.models import SectionSelection
from .forms import PostForm, EditForm, CommentForm
from civico.forms import ContactForm
from django.urls import reverse_lazy, reverse
from django.http import HttpResponse, HttpResponseRedirect
# from django.conf import settings
from django.http import JsonResponse
import random


def HomeView(request):
    nav_sections = SectionSelection.objects.filter(        
        nav_enabled = True,
        is_visible=True,
        page__template_path='civico/index.html'
    )    

    visible_sections = SectionSelection.objects.filter(
        is_visible=True,
        page__template_path='promociones/home.html'
    )

    sections = SectionSelection.objects.all
    promo_posts = Post.objects.filter(is_visible=True).order_by('-post_date')
    form = ContactForm()

    enabled_promo_page_content = Page.objects.filter(is_enabled=True)
    promo_page_random_content = None
    if enabled_promo_page_content.exists():
        promo_page_random_content = random.choice(enabled_promo_page_content)

    context = {
        'sections': sections,
        'nav_sections': nav_sections,
        'visible_sections': visible_sections,
        'promo_posts': promo_posts,
        'promo_page_random_content': promo_page_random_content,
        'form': form,
    }

    template_name = 'promociones/home.html'

    return render(request, template_name, context)


# class HomeView(ListView):
#     model = Post
#     template_name = 'promociones/home.html'
#     ordering = ['-post_date']

    # def get_context_data(self, **kwargs):
    #     context = super().get_context_data(**kwargs)
    #     context['MEDIA_URL'] = settings.MEDIA_URL
    #     return context



# def LikeView(request, pk):
#     print(request.POST)
#     post = get_object_or_404(Post, id=request.POST.get('post_id'))
#     print(post)

#     if post.likes.filter(id=request.user.id).exists():
#         post.likes.remove(request.user)
#     else:
#         post.likes.add(request.user)
#     return HttpResponseRedirect(reverse('blog:article-detail', args=[str(pk)]))



def LikeView(request, pk):
    post = get_object_or_404(Post, id=request.POST.get('post_id'))
    if post.likes.filter(id=request.user.id).exists():
        post.likes.remove(request.user)
    else:
        post.likes.add(request.user)

    likes_count = post.likes.count()

    # Return JSON response with updated like count
    return JsonResponse({'likes_count': likes_count})


def ArticleDetailView(request, pk):
    nav_sections = SectionSelection.objects.filter(        
        nav_enabled = True,
        is_visible=True,
        page__template_path='civico/index.html'
    )

    visible_sections = SectionSelection.objects.filter(
        is_visible=True,
        page__template_path='promociones/article_details.html'
    )

    post = get_object_or_404(Post, pk=pk)
    posts = Post.objects.order_by('-post_date')
    form = ContactForm()

    categories = Category.objects.all()
    category_counts = {category.name: category.articles.count() for category in categories}
    
    tags = Tag.objects.all()
    
    context = {
        'nav_sections': nav_sections,
        'visible_sections': visible_sections,
        'post': post,
        'posts': posts,
        'form': form,
        'category_counts': category_counts,
        'tags': tags,
    }

    template_name = 'promociones/article_details.html'

    return render(request, template_name, context)



# class ArticleDetailView(DetailView):
#     model = Post
#     template_name = 'promociones/article_details.html'

    # def get_context_data(self, **kwargs):
    #     context = super().get_context_data(**kwargs)
    #     context['MEDIA_URL'] = settings.MEDIA_URL
    #     return context

class AddPostView(CreateView):
    model = Post
    form_class = PostForm
    template_name = 'promociones/add_post.html'

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

class UpdatePostView(UpdateView):
    model = Post
    form_class = PostForm
    template_name = 'promociones/update_post.html'

    def form_valid(self, form):
        # Get the existing post object
        post = get_object_or_404(Post, pk=self.kwargs['pk'])
  
        # Check if 'header_image' is in form.changed_data, meaning it's changed
        if 'header_image' in form.changed_data:
            # Check if 'header_image-clear' exists in form.cleaned_data
            if form.cleaned_data.get('header_image-clear'):
                # Clearing the selection, delete the existing image
                if post.header_image:
                    old_image_path = post.header_image.path
                    if os.path.exists(old_image_path):
                        os.remove(old_image_path)
                # Set header_image to None in case the field is not required
                post.header_image = None
            else:
                # A new image was uploaded, delete the old image if it exists
                if post.header_image:
                    old_image_path = post.header_image.path
                    if os.path.exists(old_image_path):
                        os.remove(old_image_path)
        

        # Save the form with commit=True to update the database
        form.save()

        return super().form_valid(form)


class DeletePostView(DeleteView):
    model = Post
    template_name = 'promociones/delete_post.html'
    success_url = reverse_lazy('promociones:home')


class AddCommentView(CreateView):
    model = Comment
    form_class = CommentForm
    template_name = 'promociones/add_comment.html'
    success_url = reverse_lazy('promociones:home')
    
    def form_valid(self, form):
        form.instance.post_id = self.kwargs['pk']
        return super().form_valid(form)

