FROM nginx
COPY docker/nginx.conf  /etc/nginx/nginx.conf
COPY . /var/www/html
RUN openssl  dhparam 2048 > /etc/certs/dhparam.pem
EXPOSE 80 443
VOLUME /etc/letsencrypt
