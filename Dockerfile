FROM debian:stretch
RUN apt update && apt install -y apache2
#CMD ["/etc/init.d/./apache2","-k","start"]
