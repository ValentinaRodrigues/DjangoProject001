from django import forms
from inventory.models import Product


class AddForm(forms.ModelForm):

    class Meta:
        model = Product
        fields = '__all__'
