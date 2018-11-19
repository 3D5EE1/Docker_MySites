# Migrate databases

docker-compose exec web python manage.py makemigrations

docker-compose exec web python manage.py migrate

# Django collectstatic

docker-compose exec web python manage.py collectstatic
