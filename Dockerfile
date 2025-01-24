# J'ai instatllé apache, php et mysql
FROM php:8.1-apache

#Copie dossiers wordpress dans /var/www/html
COPY . /var/www/html/

#Donner les permissions aux fichiers WordPress
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 777 /var/www/html

#Exposer le port 80 pour accéder à WordPress via HTTP
EXPOSE 80

#Démarrer Apache
CMD ["apache2-foreground"]