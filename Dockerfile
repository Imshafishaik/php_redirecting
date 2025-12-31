FROM amazonlinux:2023

# Update system
RUN dnf update -y

# Install PHP 8.2 and extensions
RUN dnf install -y \
    php \
    php-cli \
    php-fpm \
    php-mysqlnd \
    php-opcache \
    php-json \
    php-mbstring \
    php-xml \
    php-gd \
    php-curl \
    && dnf clean all

WORKDIR /app
COPY . /app

EXPOSE 8080

CMD ["php", "-S", "0.0.0.0:8080", "-t", "/app"]
