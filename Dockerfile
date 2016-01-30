# Based on a light and trusted image
FROM debian:jessie

MAINTAINER Herve Nicol

ENV DEBIAN_FRONTEND=noninteractive
# Update packages list
RUN apt-get update && apt-get install -y unzip

ADD https://github.com/ldleman/Leed/archive/master.zip /tmp/leed.zip
RUN mkdir -p /var/www \
  && cd /tmp \
  && unzip leed.zip \
  && mv Leed-master /var/www/html \
  && mkdir -p /var/www/html/var/lib/php5/sessions/

#ADD conf/constant.php /var/www/html/

EXPOSE 80

LABEL description="Jessie / Apache 2.4 / Leed"

VOLUME /var/www/html



