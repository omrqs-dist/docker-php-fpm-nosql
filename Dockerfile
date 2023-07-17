FROM omrqs/php-fpm-core:latest

LABEL description="Inherit omrqs:php-fpm-core dependencies and mongodb additionals."

RUN pecl install mongodb
    
RUN docker-php-ext-enable mongodb
