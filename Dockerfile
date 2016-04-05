FROM phusion/baseimage:0.9.18

MAINTAINER Frank Rosner <frank@fam-rosner.de>

RUN add-apt-repository -y ppa:nginx/stable \
  && apt-get update \
  && apt-get install -y nginx \
  && apt-get clean all \
  && rm -rf /var/lib/apt/lists/* \
  && echo "\ndaemon off;" >> /etc/nginx/nginx.conf \
  && chown -R www-data:www-data /var/lib/nginx
