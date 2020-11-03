FROM debian:stretch
RUN apt update && apt install -y apache2
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
