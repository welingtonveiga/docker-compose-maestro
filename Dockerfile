FROM romeoz/docker-apache-php:5.6
RUN apt-get update && apt-get install -yq git && rm -rf /var/lib/apt/lists/*
RUN rm -fr /app
RUN git clone https://github.com/frameworkmaestro/maestro.git /app/maestro
WORKDIR /app/maestro
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer install
ADD ./app /app/maestro/apps
WORKDIR /app/maestro
RUN composer install
WORKDIR /app
EXPOSE 8000
