FROM bitnami/magento::latest

WORKDIR /var/www/html

COPY ./src /var/www/html

# Set work directory owner
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose port 80
EXPOSE 80

# Set the entrypoint to the Apache server
CMD ["apache2-foreground"]