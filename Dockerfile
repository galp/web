FROM nginx
COPY docker/nginx.conf  /etc/nginx/nginx.conf
RUN apti-get-update ; apt-get install git
RUN git clone https://github.com/BlackrockDigital/startbootstrap-creative.git /var/www/html
EXPOSE 80 443
VOLUME /var/www/html /etc/letsencrypt
