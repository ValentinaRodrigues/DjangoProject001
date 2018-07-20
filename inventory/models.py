from django.db import models
from django.urls import reverse
# Create your models here.
"""
class Category(models.Model):
    category_name = models.CharField(max_length=50)
    def __str__(self):
        return self.category_name

    def get_absolute_url(self):
        return reverse(viewname)

"""


class Product(models.Model):
    #category = models.ForeignKey(Category, on_delete=models.CASCADE)
    pname = models.CharField('Product Name',max_length=100)
    cost = models.FloatField()
    is_sold = models.BooleanField('Check if sold',default=False)
    order_date = models.DateField('Ordered on', blank = True, null=True, default=None)
    quantity = models.IntegerField(default=1)

    def get_absolute_url(self):
        return reverse('inventory:detail', kwargs={'pk': self.pk})

    def __str__(self):
        return self.pname

class CSVFile(models.Model):
    def validate_file_extension(value):
        if not value.name.endswith('.csv'):
            raise Exception('Error message: Please enter csv file')
    docfile = models.FileField(upload_to='uploaded_files', validators=[validate_file_extension])