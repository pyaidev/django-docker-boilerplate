[# django-boilerplate
Boilerplate to create Django projects with Docker, Postgres, and Redis.

## Requirements
- Docker
- Docker Compose
- Python 3.8
- Django 3.1
- Django Rest Framework 3.11
- Postgres 12
- Redis 6


## Installation
1. Clone the repository
2. Create a `.env` file in the root directory and add the following environment variables:
``` 
# Django settings
SECRET_KEY=SOME_SECRET_KEY
DEBUG=0
DJANGO_SETTINGS_MODULE=path.to.settings

# Database settings
DB_ENGINE=DB_ENGINE
DB_NAME=DB_NAME
DB_USER=DB_USER
DB_PASSWORD=DB_PASSWORD
DB_HOST=DB_HOST
DB_PORT=DB_PORT

# redis and celery settings
REDIS_URL=redis://localhost:6379/0
CELERY_BROKER_URL=redis://localhost:6379

```
3. Run `docker-compose up --build`
4. Run `docker-compose exec web python manage.py migrate`
5. Run `docker-compose exec web python manage.py createsuperuser`
6. Run `docker-compose exec web python manage.py runserver
7. Visit `http://127.0.0.1:8001` in your browser
8. Visit `http://127.0.0.1:8001/admin` to access the admin panel
9. Visit `http://127.0.0.1:8001/swagger` to access the API documentation
10. Run `docker-compose exec web python manage.py test` to run the tests
11. Run `docker-compose down` to stop the containers
12. Run `docker-compose down -v` to stop the containers and remove the volumes
13. Run `docker-compose down -v --rmi all` to stop the containers, remove the volumes, and remove the images

