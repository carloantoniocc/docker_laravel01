FROM php:7.2-apache
#LABEL maintainer="Jaivic"

#RUN a2enmod rewrite 

#RUN apt-get update && apt-get install -y \
#        zlib1g-dev \
#        libicu-dev \
#        libxml2-dev \
#        vim \
#        && docker-php-ext-install pdo_mysql zip intl xmlrpc soap opcache \
#        && docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd

#RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -- \
#        && apt-get install -y nodejs \
#        && apt-get autoremove -y

#COPY --from=composer /usr/bin/composer /usr/bin/composer
#COPY docker/php/php.ini /usr/local/etc/php/
#COPY docker/apache/vhost.conf /etc/apache2/sites-avalaible/000-default.conf
#COPY docker/apache/apache2.conf /etc/apache2/apache2.conf

#suprimir mensaje de composer admin
#ENV COMPOSER_ALLOW_SUPERUSER 1

#COPY . /var/www/html/
#COPY docker/.env.prod /var/www/html/.env
#WORKDIR /var/www/html/

#RUN chown -R www-data:www-data /var/www/html \
#&& composer install
