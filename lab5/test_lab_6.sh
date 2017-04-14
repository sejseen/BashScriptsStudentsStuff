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

CPU_LOAD=0
OPERATION_MEMORY_BUSY=0

ps aux | awk '{print $5}' | while read x; do

  if [[ $x != 0 ]]; then
  	: $((CPU_LOAD+=5))
  fi

done;

	  echo "Summary of CPU LOAD: "
	  echo $CPU_LOAD

#awk '{print $0}'as