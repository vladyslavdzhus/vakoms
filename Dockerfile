FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install -y apache2 supervisor

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ADD index.html /var/www/html/index.html

EXPOSE 80

CMD ["/usr/bin/supervisord"]