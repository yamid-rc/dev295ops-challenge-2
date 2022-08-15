#! /bin/bash


# Ejercicio 4 - Descargar contenido


#variables
url=$1
buscar_palabra=$2
archivo="contenido.html"

wget -O $archivo $url
grep --color -n $buscar_palabra $archivo