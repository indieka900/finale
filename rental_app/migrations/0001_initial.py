# Generated by Django 3.2.23 on 2023-11-20 11:35

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Apartments',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('apartment_name', models.CharField(max_length=80, unique=True, verbose_name='Apartment Name')),
                ('description', models.TextField(verbose_name='Apartment Desciption')),
                ('facilities', models.TextField(blank=True, null=True, verbose_name='General Facilities')),
                ('image', models.ImageField(default='default.png', upload_to='Appartments', verbose_name='Appartment image')),
                ('paid_for', models.TextField(blank=True, null=True, verbose_name='Facilities to be Paid For')),
                ('location', models.CharField(max_length=500, verbose_name='Describe the location')),
                ('date_created', models.DateTimeField(auto_now_add=True)),
                ('date_updated', models.DateTimeField(auto_now=True, verbose_name='Date Updates')),
            ],
            options={
                'verbose_name': 'Apartment',
                'verbose_name_plural': 'Apartments',
            },
        ),
        migrations.CreateModel(
            name='Apartments2',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('apartment_name', models.CharField(max_length=80, unique=True, verbose_name='Apartment Name')),
            ],
        ),
        migrations.CreateModel(
            name='Rooms',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('room_number', models.CharField(max_length=50, verbose_name='Room Number')),
                ('size', models.CharField(max_length=30, verbose_name='Room Size')),
                ('room_type', models.CharField(choices=[('Singe room', 'Singe room'), ('Bedsitter', 'Bedsitter'), ('Studio', 'Studio'), ('Go Down', 'Go Down'), ('One-Bedroom', 'One-Bedroom'), ('Two-Bedroom', 'Two-Bedroom'), ('Three-Bedroom', 'Three-Bedroom'), ('Four-Bedroom', 'Four-Bedroom'), ('Shared room', 'Shared room'), ('En suite room', 'En suite room'), ('Self-contained apartment', 'Self-contained apartment'), ('Other', 'Other')], max_length=40, verbose_name='Room Type')),
                ('booked', models.BooleanField(default=False, verbose_name='Booked')),
                ('rent', models.PositiveIntegerField(default=0, verbose_name='Rent per Month')),
                ('image', models.ImageField(default='default.png', upload_to='Rooms', verbose_name='Room image')),
                ('date_created', models.DateTimeField(auto_now_add=True)),
                ('date_updated', models.DateTimeField(auto_now=True, verbose_name='Date Updates')),
                ('apartment', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='rental_app.apartments')),
            ],
            options={
                'verbose_name': 'room',
                'verbose_name_plural': 'rooms',
            },
        ),
    ]
