FROM nginx
COPY docker/nginx.conf  /etc/nginx/nginx.conf
COPY . /var/www/html

EXPOSE 80 443
VOLUME /etc/letsencrypt
