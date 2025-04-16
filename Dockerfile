# Use PHP 8.2 with Apache
FROM php:8.2-apache

# Enable Apache mod_rewrite (if needed)
RUN a2enmod rewrite

# Install PHP extensions (like mysqli for MySQL)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy project files into the container
COPY . /var/www/html/

# Set proper permissions (optional)
RUN chown -R www-data:www-data /var/www/html/
