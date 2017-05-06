# Local development environment

### How to use:

1. Copy the "example.env" file to ".env" so docker-compose can find it.
2. Fill in the following values in your .env file:

   - API_SERVER_CODE_PATH \
     The path to where you local copy of the api-server repo lies.
   - API_SERVER_SECRET_KEY \
     Some secret-key for the API-Server, this can be nonsense as it's only your local development server.
   - USER_DB_PASSWORD \
     Some password for the user-db. This can be nonsense as well. 

   Optional:

   - HTTP_PORT \
     The port for everything to run on. Default: 8000.
     
3. Run '```docker-compose -p kannji up```' in the directory where the 'docker-compose.yml' lies to start everything.

4. Run '```docker-compose -p kannji exec api-server python manage.py createsuperuser```' to create a django-superuser.

