# Utilizamos la imagen php:apache como base
FROM webserver:latest

USER root

# Instalamos dependencias necesarias para Composer
RUN apt-get update && apt-get install -y git unzip nano

# Descargamos e instalamos Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Exponemos el puerto 80 para Apache
EXPOSE 80

# Punto de entrada del contenedor
COPY ./entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]

# Iniciamos Apache al arrancar el contenedor
CMD ["apache2-foreground"]