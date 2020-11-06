FROM biku8293/apache
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND