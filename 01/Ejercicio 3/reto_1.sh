#! /bin/bash

#set -x

# Script que crea estructura de directorios y dos archivos y hacer operaciones
# entre ellos.

# Variables
texto_defecto=" "

if [[ $# -lt 1 ]];
then
    texto_defecto="Que me gusta bash!!!"
else
    texto_defecto=$1
fi

# Ejercicio 1 - Manejo de archivos
mkdir -p foot/dummy foot/empty
touch foot/dummy/file1.txt
touch foot/dummy/file2.txt
echo $texto_defecto > foot/dummy/file1.txt

# Ejercicio 2 - Manejo de contenido de archivos
cat foot/dummy/file1.txt > foot/dummy/file2.txt
mv foot/dummy/file2.txt foot/empty/file2.txt





