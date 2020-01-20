FROM ubuntu:16.04

RUN apt-get update
#RUN apt-get upgrade -y
RUN apt-get install apache2 -y
RUN apt-get install libapache2-mod-php -y
RUN apt-get install php -y
RUN mv /var/www/html/index.html /var/www/html/index.main
ADD index.html /var/www/html
ADD info.php /var/www/html


