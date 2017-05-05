############################################################
# Dockerfile to build the development kannji-api server
# Based on Python
############################################################
FROM python
LABEL maintainer "Jan-Luca Klees and Johannes Heise"

# every thing fresh
RUN apt-get -y update
RUN apt-get -y upgrade

# get necessary stuff
# Django for obvious reasons
RUN pip install Django
# Something to connect python to postgres
RUN pip install psycopg2
# Some Xpath library to parse the kanjidic2 and jmdict with
RUN apt-get -y install libxml2-dev libxslt-dev python-dev
RUN pip install lxml
# oauth2 authentication for django
RUN pip install django-oauth-toolkit django-cors-middleware
# some zip tool for extracting the code from the repo
RUN apt-get -y install unzip

RUN mkdir -p /kannji/

WORKDIR /kannji/api-server/

ENTRYPOINT python manage.py migrate && python manage.py runserver 0.0.0.0:80