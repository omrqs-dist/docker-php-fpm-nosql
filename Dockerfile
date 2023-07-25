FROM omrqs/php-fpm-core:latest

LABEL description="Inherit omrqs:php-fpm-core dependencies and mongodb additionals."

RUN apk add --virtual --update --no-cache $PHPIZE_DEPS \
    curl-dev \
    openssl-dev \
    && rm -rf /var/cache/apk/* /var/lib/apk/* or /etc/apk/cache/*

RUN pecl install mongodb
    
RUN docker-php-ext-enable mongodb
