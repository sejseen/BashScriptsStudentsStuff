#!/bin/bash
# ============================
#Napisz skrypt, ktory wyświetli ścieżki do wszystkich lokalnych kopii, nie starszych niż miesiąc, 
#repozytoriów kodu (katalogów, zawierających podkatalog o nazwie ‘.git’), znajdujących 
#się w określonym miejscu systemu plików (parametr wywołania skryptu), o ile ono istnieje.

# ============================
# example:
# ./script44.sh .
# ============================

if [ $# -ne 1 -o ! -d $1 ]; then
	echo Błędny katalog lub liczba argumentów
	exit
fi	

diff $sciezka1 $sciezka2 | sort | uniq -u | while read x; do
  echo $x;
done;

find $1 -type d \( -name '*.git' -or -name '*.svn' \) -and -mtime -30