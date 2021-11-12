FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted gnu-libiconv
ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so php

ENV PHP_MEMORY_LIMIT=1G

RUN docker-php-ext-install pdo pdo_mysql

RUN apk add --no-cache libpng libpng-dev && docker-php-ext-install gd && apk del libpng-dev

RUN apk update \
    && apk upgrade \
    && apk add --no-cache \
        freetype \
        libpng \
        libjpeg-turbo \
        freetype-dev \
        libpng-dev \
        jpeg-dev \
        libwebp-dev \
        libjpeg \
        libjpeg-turbo-dev

RUN docker-php-ext-configure gd \
        --with-freetype=/usr/lib/ \
        --with-jpeg=/usr/lib/ \
        --with-webp=/usr

RUN NUMPROC=$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1) \
    && docker-php-ext-install -j${NUMPROC} gd


RUN apk add --no-cache sqlite-libs
RUN apk add --no-cache icu sqlite git openssh zip
RUN apk add --no-cache --virtual .build-deps icu-dev libxml2-dev sqlite-dev curl-dev
RUN docker-php-ext-install \
        bcmath \
        curl \
        ctype \
        iconv \
        intl \
        json \
        pdo \
        pdo_sqlite \
        tokenizer \
        xml
RUN apk del .build-deps
RUN docker-php-ext-enable pdo_sqlite
