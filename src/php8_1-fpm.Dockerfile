FROM php:8.1-fpm

WORKDIR /code

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

RUN apt-get update && \
    apt-get install -y vim libfreetype6-dev libjpeg62-turbo-dev libpng-dev zlib1g-dev \
        libzip-dev libcurl4-openssl-dev pkg-config libssl-dev

RUN docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/
RUN docker-php-ext-install gd zip pdo pdo_mysql

RUN pecl install mongodb-1.12.0
RUN docker-php-ext-enable mongodb.so
