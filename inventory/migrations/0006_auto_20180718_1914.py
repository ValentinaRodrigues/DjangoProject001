# Generated by Django 2.0.7 on 2018-07-18 13:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('inventory', '0005_auto_20180718_1912'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='is_sold',
            field=models.BooleanField(default=False, verbose_name='Check if sold'),
        ),
        migrations.AlterField(
            model_name='product',
            name='order_date',
            field=models.DateField(blank=True, null=True, verbose_name='Ordered on'),
        ),
    ]