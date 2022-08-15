#!/bin/bash
set -x

# Simulación de un directorio HOME para realizar las operaciones dentro de una carpeta de usuario
mkdir -p ./home/yamid-rescab

# Ubicación en el directorio de usuario
cd ./home/yamid-rescab


# Operaciones de directorio
mkdir nueva_carpeta
cd nueva_carpeta
touch archivo_nuevo.txt
mv archivo_nuevo.txt archivo_viejo.txt
echo "Nueva líneas de texto" > archivo_viejo.txt
chmod o+rwx archivo_viejo.txt
cd ../
ln -s nueva_carpeta/archivo_viejo.txt enlace.ln
rm -R nueva_carpeta/
