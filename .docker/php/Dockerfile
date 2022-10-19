FROM php:8.1-fpm-alpine3.16

COPY --from=composer:2.4.3 /usr/bin/composer /usr/bin/composer

RUN set -ex && apk update && apk upgrade && apk --no-cache add \
    $PHPIZE_DEPS \
    postgresql-dev \
    && docker-php-ext-install pdo_pgsql \
    # Clean-up
    && apk del ${PHPIZE_DEPS} \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/pear \
    && rm -rf /tmp/* /var/lib/apt/lists/* \
    && rm -rf /var/cache/apk/*

WORKDIR /app

CMD ["php-fpm"]
