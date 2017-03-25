#!/bin/bash
# ============================
#Napisz skrypt, który dla podanego miejsca w systemie plików (parametr wykonania skryptu)
#oraz wszystkich jego podkatalogów, wypisze ścieżkę,
#nazwe użytkownika, grupy i uprawnienia do plików zwykłych, których formalnym 
#właścicielem nie jest aktualny użytkownik (whoami).

# ============================
# example:
# ./script44.sh .
# ============================

if [ $# -ne 1 -o ! -d $1 ]; then
	echo Błędny katalog lub liczba argumentów
	exit
fi	

owner=$(whoami)

find $1 -type f -and ! -user ${owner} -ls