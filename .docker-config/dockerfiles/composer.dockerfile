FROM composer:latest

WORKDIR /var/www/html

RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted gnu-libiconv
ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so php

ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]