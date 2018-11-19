FROM nginx:latest

ADD nginx1.conf /etc/nginx/nginx.conf
ADD nginx2.conf /
ADD nginx.sh /

RUN apt update  && apt install -y cron rsyslog letsencrypt

RUN mkdir -p /var/www/rypy
RUN mkdir -p /var/www/media
RUN mkdir -p /var/www/static

WORKDIR /var/www/media
RUN chown -R nginx:nginx /var/www/media

WORKDIR /var/www/static
RUN chown -R nginx:nginx /var/www/static

WORKDIR /
RUN chmod 777 nginx.sh

CMD nginx -g 'daemon off;'  

ENTRYPOINT ["sh", "/nginx.sh"]

