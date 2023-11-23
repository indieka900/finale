# Generated by Django 3.2.23 on 2023-11-22 12:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('rental_app', '0002_alter_rooms_booked'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='rooms',
            options={'get_latest_by': 'date_updated', 'ordering': ['-date_updated'], 'verbose_name': 'room', 'verbose_name_plural': 'rooms'},
        ),
        migrations.AddField(
            model_name='rooms',
            name='rate',
            field=models.CharField(choices=[('Per Hour', 'Per Hour'), ('Per Day', 'Per Day'), ('Per Month', 'Per Month')], default='Per Month', max_length=50, verbose_name='Charged Per'),
        ),
    ]
