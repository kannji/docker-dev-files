#!/bin/sh

cd /kannji/api-server-master/

# apply migrations that might be new
python manage.py migrate --verbosity 3

# create an django-admin user
echo "from django.contrib.auth.models import User; User.objects.filter(email='${DJANGO_SUPERUSER_EMAIL}').delete(); User.objects.create_superuser('${DJANGO_SUPERUSER_NAME}', '${DJANGO_SUPERUSER_EMAIL}', '${DJANGO_SUPERUSER_PASSWORD}')" | python manage.py shell

# run whatever the command is (usually just to start the server)
python manage.py $@ --verbosity 3