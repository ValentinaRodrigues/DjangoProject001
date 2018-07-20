from django.shortcuts import render, get_object_or_404
from django.views.generic import TemplateView
from .models import Product
from datetime import datetime
from .forms import AddForm
from django.views.generic.edit import CreateView, UpdateView, DeleteView
import csv


class AddView(TemplateView):
    template_name = 'inventory/form_add.html'
    def get(self,request):
        form = AddForm()
        return render(request, self.template_name, {'form': form})

    def post(self, request):
        form = AddForm(request.POST)
        if form.is_valid():
            form.save()
            form = AddForm()
        return render(request, self.template_name, {'form': form, 'message': 'Product details Added Successfully'})


def index(request):
    all_Products = Product.objects.all()
    context = {'all_Products': all_Products}
    return render(request, 'inventory/index.html', context)


def products(request):
    all_Products = Product.objects.all()
    context = {'all_Products': all_Products}
    return render(request, 'inventory/products.html', context)


def detail(request, category_id):
    product_details = get_object_or_404(Product, pk=category_id)
    context = {'product_details': product_details}
    return render(request, 'inventory/details.html', context)


def upload_CSV(request):
    all_Products = Product.objects.all()
    context = {
        'Product': all_Products}
    return render(request, 'inventory/upload_CSV.html', context)


def check(request):
    file = request.FILES['csvfile']
    file_data = file.read().decode("utf-8").splitlines()
    reader = csv.DictReader(file_data)
    create_count = 0
    update_count = 0
    try:
        for row in reader:
            if not row['order_date']:
                od = None
            else:
                od = datetime.strptime(row['order_date'], '%Y-%m-%d')
            product_object, created = Product.objects.update_or_create(pname=row['pname'],
                                                                       defaults={'pname': row['pname'], 'cost': row['cost'],
                                                                                 'is_sold': (row['is_sold']).title(),
                                                                                 'order_date': od,
                                                                                 'quantity': row['quantity']}, )
            if created:
                create_count += 1
            else:
                update_count += 1
        # print(data_dict)
        context = {'error_message': str(create_count) + ' records created.' + str(
            update_count) + ' records update. File Uploaded Successfully'}
    except:
        context={'error_message': "Please check if the column value in the CSV file matches the name and type of data required"}
    return render(request, 'inventory/upload_CSV.html', context)


"""
class ProductCreate(CreateView):
    model = Product
    fields = ['pname','cost', 'is_sold', 'order_date','quantity']
"""
