FROM ubuntu:22.04
MAINTAINER devopsteam
RUN apt-get update && apt-get install -y apache2 wget unzip
WORKDIR /tmp
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip
RUN unzip oxer.zip && mv oxer-html/* /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
