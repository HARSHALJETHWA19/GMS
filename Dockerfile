# Base image with PHP and Apache
FROM php:7.4-apache

# Install necessary PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy PHP application code to the container
COPY . /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Expose port 80 for HTTP
EXPOSE 80
