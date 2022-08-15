#! /bin/bash

mkdir Practica
touch Practica/archivo-{1..9}.txt
chmod a-rwx Practica/archiv*


# Otro modo por si el interprete no reconoce el comando anterior

#for secuencia in {1..9}
# do
#    touch Practica/"archivo-$secuencia.txt"
# done
