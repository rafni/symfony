#!/bin/bash

# Cambiar el propietario de los archivos del servidor web al usuario www-data y al grupo www-data
chown -R www-data:www-data /var/www

# Iniciar el servidor web
apache2-foreground   # Esto es solo un ejemplo para Apache. Cambia el comando según tu servidor web (por ejemplo, nginx o httpd).