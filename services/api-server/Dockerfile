############################################################
# Dockerfile to build the Kannji API server image for local development
############################################################
FROM python:alpine
LABEL maintainer = "Jan-Luca Klees"

# get necessary stuff
# TODO add more package descriptions
# postgresql-dev: for postgres interaction
# libxml2-dev, libxslt-dev: for parsing xml using xpath
RUN apk update && apk upgrade && \
    apk add --virtual build-deps gcc python-dev musl-dev && \
    apk add postgresql-dev libxml2-dev libxslt-dev

# pip stuff
# Django: Well as we ar eusing Django we gotta install it
# psycopg2: postgres adapter
# lxml: for using libxml in python
# djangorestframework: rest framework for django
RUN pip install Django psycopg2 lxml djangorestframework

# image config
WORKDIR /kannji/api-server-master/
EXPOSE 80

# entrypoint
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

# command
CMD ["runserver", "0.0.0.0:80"]