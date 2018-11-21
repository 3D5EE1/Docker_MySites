## Project MySites in docker

`примеры того как выглядит проект`

моя [визитка](https://rypy.ru "визитка").

посмотреть все [проекты](https://rypy.ru/menu "страница выбора сайтов").

***

## Migrate databases

> **обновление модели:** docker-compose exec **web** python manage.py **makemigrations**

> **миграция в базу:** docker-compose exec **web** python manage.py **migrate**

***

## Django collectstatic

> **пернос статических файлов в проект:** docker-compose exec **web** python manage.py **collectstatic**

***
