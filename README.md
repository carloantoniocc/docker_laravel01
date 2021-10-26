# Apuntes de Instalacion
Una vez descargado el repositorio crear imagen, en background:

$docker-compose up -d

## ingresar a la consola linux desde windows

$winpty docker exec -it [imagenID] bash

## ingresar a la consola en linux

$docker exec -i -t [imagenID] /bin/bash

## Para revision:
$docker-compose image ls

$docker ps (apache ocupara el puerto 8080 desde el host)




