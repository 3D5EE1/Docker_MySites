## Project MySites in docker

`примеры того как выглядит проект`

моя [визитка](https://rypy.ru "визитка").

посмотреть все [проекты](https://rypy.ru/menu "страница выбора сайтов").

***

## инструкция:

1. скопировать весь проект в любую директорию, на ваш выбор.

2. зайти в директорию **./web** и склонировать сам проект **git clone https://github.com/3D5EE1/MySites.git**.

* В данном случае весь проект будет перенесен полностью в один из слоев docker image, но так как вес проекта не велик, мы тем самым сэкономим время на копирование его вручную.

* Если на этом примере будете *запускать другой проект* не забудьте, что в корне проекта в гите должен присутствовать фаил **gunicorn.conf**, на всякий случай конфиг расположен в директории ./web и при появлении ошибки об отсутствие файла, скопируйте его вручную. Так же измените /MySites в *dcoker-compose.yml* и в */web/Dockerfile* на название вашего проекта, а в конфигах ./nginx/nginx1.conf и ./nginx/nginx2.conf поменяйте домены на ваши. В файле ./nginx/Dockerfile изменить *rypy* в строке **RUN mkdir -p /var/www/rypy** на название вашего домена, тоже самое проделать с файлом nginx.sh.

3. установка/запуск выполняется **командой docker-compose up** из корня проекта, где лежит файл docker-compose.yml; команда **командой docker-compose up -d** запустит проект в виде демона



## Migrate databases

> **обновление модели:** docker-compose exec **web** python manage.py **makemigrations**

> **миграция в базу:** docker-compose exec **web** python manage.py **migrate**

***

## Django collectstatic

> **пернос статических файлов в проект:** docker-compose exec **web** python manage.py **collectstatic**

***
