# Generated by Django 2.0.7 on 2018-07-18 13:31

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('inventory', '0002_auto_20180718_1819'),
    ]

    operations = [
        migrations.RenameField(
            model_name='product',
            old_name='available',
            new_name='quantity',
        ),
    ]
