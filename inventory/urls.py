from django.urls import path
from . import views
from .views import AddView

app_name = 'inventory'
urlpatterns = [
    path('', views.index, name='index'),
    path('products/', views.products, name='products'),
    path('<int:category_id>/', views.detail, name='detail'),
    path('upload_CSV/', views.upload_CSV, name='upload_CSV'),
    path('check/', views.check, name='check'),
    path('addProduct/', AddView.as_view(), name='add'),

]
