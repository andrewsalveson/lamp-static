FROM tutum/lamp:latest
RUN sudo apt-get update
RUN sudo apt-get -y install curl libcurl3 libcurl3-dev php5-curl php-pear
RUN pear install PEAR-1.10.1
RUN pear install Mail-1.3.0 && pear install Net_SMTP
RUN curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
COPY ./public/ /app
COPY ./000-default.conf /etc/apache2/sites-enabled/000-default.conf
#RUN cd app && composer install && cd ..
EXPOSE 80 5656 
CMD ["/run.sh"]
