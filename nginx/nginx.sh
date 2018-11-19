#!/bin/bash

nginx

nginx -s reload

letsencrypt certonly --webroot -w /var/www/rypy -d rypy.ru -d www.rypy.ru -m rypylook@outlook.com --agree-tos

nginx -s reload

mv /nginx2.conf /etc/nginx/nginx.conf

nginx -s reload

echo "30 8 * * 1 /usr/bin/letsencrypt renew >> /var/log/letsencrypt-renew.log" >> /etc/cron.d/sample

service rsyslog start && service cron start && tail -f /var/log/syslog

