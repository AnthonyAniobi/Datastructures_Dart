# Generated by Django 4.0.5 on 2022-07-02 18:17

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Post',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=250)),
                ('image', models.ImageField(upload_to='')),
                ('text', models.TextField()),
                ('created_on', models.DateField(auto_now_add=True)),
                ('edited_on', models.DateField(auto_now=True)),
            ],
        ),
    ]