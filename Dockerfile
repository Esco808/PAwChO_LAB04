FROM ubuntu:latest

LABEL maintainer="Pawel_Ostrowski <s99649@pollub.edu.pl>"

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y apache2 && \
    rm -rf /var/lib/apt/lists/*

COPY ./ /var/www/html

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]

