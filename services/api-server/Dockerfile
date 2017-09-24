############################################################
# Dockerfile to build the Kannji API server image for local development
############################################################
FROM python:alpine
LABEL maintainer = "Jan-Luca Klees"

# get necessary stuff
# packages
# TODO add package descriptions
RUN apk update && apk upgrade && \
    apk add --virtual build-deps gcc python-dev musl-dev && \
    apk add postgresql-dev libxml2-dev libxslt-dev
# pip stuff
RUN pip install Django psycopg2 lxml django-oauth-toolkit django-cors-middleware django-oauth-toolkit djangorestframework

# image config
WORKDIR /kannji/api-server-master/
EXPOSE 80

# entrypoint
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

# command
CMD ["runserver", "0.0.0.0:80"]