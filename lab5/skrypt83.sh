#!/bin/bash
# ============================
#Autor: Konrad Tyma 218700

#Napisz skrypt, który będzie pełnił funkcję bardzo prostego analizatora składni plików csv. Załóżmy optymistycznie, 
#ze kazdy poprawny plik csv składa się z nagłówka w pierwszej linii, zawierajacego
# spis pól w pliku (na przykład: #id,imie,nazwisko - zgłoś (wypisz) linie, które nie zawierają odpowiedniej liczby pól

#First Param, path to csv file

if [ $# -ne 1 -o ! -f $1 ]; then
	echo Błędny katalog lub liczba argumentów
	exit
fi	

cat $1 | awk 'BEGIN { FS = ":"}
( $7 == "/bin/false" || $7 == "/usr/bin/nologin || /sbin/nologin" )
{print "Incorrect file"}'