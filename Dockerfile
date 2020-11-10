#FROM biku8293/apache
#ADD . /var/www/html
#ENTRYPOINT apachectl -D FOREGROUND
FROM nginx:1.17.1-alpine
ADD . /usr/share/nginx/html