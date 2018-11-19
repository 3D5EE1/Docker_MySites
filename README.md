# Migrate databases

docker-compose exec web python manage.py makemigrate

docker-compose exec web python manage.py migrate

# Django collectstatic

docker-compose exec web python manage.py collectstatic
