FROM ubuntu:latest
WORKDIR /var/www/html
RUN apt-get update -y
RUN apt-get install apache2 -y
COPY . /var/www/html/
ENTRYPOINT apachectl1 -D FOREGROUND

