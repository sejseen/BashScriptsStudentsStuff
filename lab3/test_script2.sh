#!/bin/bash
# ============================
#Należy znaleźć pliki o rozszerzeniu txt do których właściciel ma prawo wykonywania, ale nie czytania
#Znaleźć pliki txt lub mp3 których rozmiar jest większy od zera (a nie różny od zera) i które są plikami
# ============================
# example:
# ./test_script2.sh .
# ============================

if [ $# -ne 1 -o ! -d $1 ]; then
	echo Błędny katalog
fi	

find $1 -name '*.txt' -and ! -perm -u+r -and -perm -u+x

find $1 \( -name '*.txt' -or -name '*.mp3' \) -and -size +4096c -and -type f