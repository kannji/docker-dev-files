#!/bin/sh

cd /kannji/api-server-master/

python manage.py migrate

echo "from django.contrib.auth.models import User; User.objects.filter(email='${DJANGO_SUPERUSER_EMAIL}').delete(); User.objects.create_superuser('${DJANGO_SUPERUSER_NAME}', '${DJANGO_SUPERUSER_EMAIL}', '${DJANGO_SUPERUSER_PASSWORD}')" | python manage.py shell

python manage.py $@