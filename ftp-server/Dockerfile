from ubuntu:18.04
RUN apt-get update && apt-get install -y proftpd ftp
RUN addgroup userftp
RUN adduser admweb -shell /bin/false -home /var/www
RUN adduser admweb userftp
EXPOSE 20 21
