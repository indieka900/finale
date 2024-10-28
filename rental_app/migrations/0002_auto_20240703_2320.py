# Generated by Django 3.2.23 on 2024-07-03 20:20

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('accounts', '0001_initial'),
        ('rental_app', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Page',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('type', models.CharField(max_length=50, verbose_name='Page Type')),
                ('details', models.TextField(verbose_name='Page Detail')),
            ],
        ),
        migrations.CreateModel(
            name='RoomType',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('room_type', models.CharField(max_length=200, unique=True, verbose_name='Room Type')),
            ],
            options={
                'ordering': ('room_type',),
            },
        ),
        migrations.CreateModel(
            name='Social_media',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
                ('link', models.CharField(max_length=250, verbose_name='The actual link')),
                ('icon', models.CharField(max_length=10, verbose_name='Icon')),
            ],
        ),
        migrations.AlterModelOptions(
            name='rooms',
            options={'get_latest_by': 'date_updated', 'verbose_name': 'room', 'verbose_name_plural': 'rooms'},
        ),
        migrations.AddField(
            model_name='rooms',
            name='rate',
            field=models.CharField(choices=[('Per Hour', 'Per Hour'), ('Per Day', 'Per Day'), ('Per Month', 'Per Month')], default='Per Month', max_length=50, verbose_name='Charged Per'),
        ),
        migrations.AlterField(
            model_name='rooms',
            name='booked',
            field=models.BooleanField(default=False, verbose_name='Booked'),
        ),
        migrations.AlterField(
            model_name='rooms',
            name='rent',
            field=models.PositiveIntegerField(default=0, verbose_name='Rent Charged'),
        ),
        migrations.AlterUniqueTogether(
            name='rooms',
            unique_together={('room_number', 'apartment')},
        ),
        migrations.CreateModel(
            name='Booking_History',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date_booked', models.DateTimeField(auto_now=True, verbose_name='Date Booked')),
                ('room', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='rental_app.rooms', verbose_name='Room')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='accounts.prospectivetenant', verbose_name='Tenant')),
            ],
            options={
                'verbose_name': 'Booking History',
                'verbose_name_plural': 'Booking Histories',
                'get_latest_by': 'date_booked',
            },
        ),
        migrations.AlterField(
            model_name='rooms',
            name='room_type',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='rental_app.roomtype', verbose_name='Room-Type'),
        ),
    ]