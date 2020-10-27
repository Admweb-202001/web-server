FROM debian:stretch
RUN apt update && apt install -y apache2
ADD ./site /var/www/html
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
