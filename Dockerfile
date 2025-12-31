FROM amazonlinux:2023

RUN dnf install -y \
    php \
    php-cli \
    php-mbstring \
    php-json \
    php-xml \
    php-curl \
    && dnf clean all

WORKDIR /app
COPY . /app

EXPOSE 8080

CMD ["php", "-S", "0.0.0.0:8080", "-t", "/app"]
