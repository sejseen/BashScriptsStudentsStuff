#!/bin/bash
# ============================
#Autor: Konrad Tyma 218700
# Napisz skrypt który przeszuka zadane miejsce w systemie plików(parametr)
#po czym wypisze na ekran i zapisze do pliku ścieżki do wszystkich plików (uzględniając także wszystkie możliwe podkatalogi wskazanego
#miejsca) zwyczajnych, których nazwy są palindromami(czytane od pocz i od konca sa takie same np 'kajak')

# ============================
# example:
# ./zad66.sh .
# ============================

if [ $# -ne 1 -o ! -d $1 ]; then
	echo Błędny katalog lub liczba argumentów
	exit
fi	

find $1 -type f | while read x; do

  FILENAME=$(basename "$x")	  	

  if [[ "$(echo $FILENAME | rev)" = "$FILENAME" ]]; then
	  echo "\"$FILENAME\" is a Palindrome"
	  echo $x > palindroms.txt
  fi
done;
