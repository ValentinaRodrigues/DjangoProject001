from django import forms
from inventory.models import Product


class AddForm(forms.ModelForm):
    class Meta:
        model = Product
        fields = '__all__'
        widgets = {
            'order_date': forms.DateInput(format=('%Y-%m-%d'),
                                             attrs={'class':'myDateClass',
                                            'placeholder':''})
        }