#! /bin/bash

chmod o+r             Practica/archivo-1.txt
chmod u-w             Practica/archivo-2.txt
chmod a-x             Practica/archivo-3.txt
chmod go-r            Practica/archivo-4.txt
chmod g-r,o+wx        Practica/archivo-5.txt
chmod u+w,o-r         Practica/archivo-6.txt
chmod u+w,g+x,o-x,o+w Practica/archivo-7.txt
chmod u-rw,g-r        Practica/archivo-8.txt
chmod u+rw,g+rw,o+r   Practica/archivo-9.txt
