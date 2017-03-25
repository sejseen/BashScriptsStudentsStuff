#!/bin/bash
# ============================
#Napisz skrypt, który w zadanym miejscu systemu plikow (parametr wywołania skryptu) 
#o ile ono istnieje, wyswietli sciezki do wszystkich plikow (takze w podkatalogach)
#ktore sa wykonywalne dla wskazanego uzytownika (parametr wywolania skryptu)
# ============================
# example:
# ./script43.sh .
# ============================

if [ $# -ne 2 -o ! -d $1 ]; then
	echo Błędny katalog lub liczba argumentów
	exit
fi	


find $1 -type f -perm -u+x -user $2 -print