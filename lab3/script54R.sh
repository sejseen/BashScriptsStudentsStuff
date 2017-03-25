#!/bin/bash
# ============================
#Napisz skrypt, który będzie pełnił funkcję programu czyszczącego katalog użytownika ze śmieci
#
#program powinien zliczyć wszystkie puste pliki i katalogi w zadanym miejscu 
#(parametr wywołania skryptu), należące do danego użytkownika (parametr wywołania skryptu)
#
#program powinien zgłosić pliki i katalogi, których zawartość nie była zmieniana od roku
#
#program powinien zaraportować wszystkie pliki, ktorych zadany uzytkownik nie jest oficjalnym wlascicielem 
#(nie uwzgledniamy grupy uzytkownika)
#program powinien zglosic wszystkie pliki, ktorych wskazany uzytkownik nie moze przeczytac


# ============================
# example:
# ./script44.sh .
# ============================

if [ $# -ne 2 -o ! -d $1 ]; then
	echo Błędny katalog lub liczba argumentów
	exit
fi	

ME=$(whoami)
INPUT_OWNER=$2

#find $1 \( -type f -empty -or -type d -empty \) | wc -l

#find $1 \( -type f -empty -or -type d -empty \) -and -mtime +365

find $1 -type f -ls | awk '{ print $5 }' ! $INPUT_OWNER
 
#find $1 -type f ! -perm -$INPUT_OWNERperm+r