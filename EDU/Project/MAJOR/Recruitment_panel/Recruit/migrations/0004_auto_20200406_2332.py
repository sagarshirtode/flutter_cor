# Generated by Django 3.0.3 on 2020-04-06 18:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Recruit', '0003_auto_20200406_2147'),
    ]

    operations = [
        migrations.AlterField(
            model_name='document_details',
            name='addr_proof',
            field=models.ImageField(upload_to='media/'),
        ),
    ]
