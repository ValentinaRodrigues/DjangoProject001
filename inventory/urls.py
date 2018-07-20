from django.urls import path
from . import views
#from .views import AddView

app_name = 'inventory'
urlpatterns = [
    path('', views.index, name='index'),
    path('products/', views.products, name='products'),
    path('<int:pk>/', views.detail, name='detail'),
    path('upload_CSV/', views.upload_CSV, name='upload_CSV'),
    path('check/', views.check, name='check'),
    path('addProduct/', views.ProductCreate.as_view(), name='add'),
    #path('checkProduct/', views.checkProduct, name='checkProduct'),
    path('products/<int:pk>/', views.ProductUpdate.as_view(), name='update'),
    path('products/<int:pk>/delete', views.ProductDelete.as_view(), name='delete'),
]