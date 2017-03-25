#!/bin/bash
# ============================
#Napisz skrypt który 
#a)pobierze i rozpakuje źródła Linuksa jeśli trzeba
#b)zliczy wc ile żrodła Linuksa zawierają plików katalogów itp
#c)poda jaką część wszystkich plików źródłowych stawowią pliki o rozszerzeniu asm c cpp
#d)zliczy ile plikow

# ============================
# example:
# ./script44.sh .
# ============================




if [ -d linux ]; then
   echo "File exists."
   tar -xf linux.tar.xz
   rm linux.tar.xz
else
	wget datko.pl/linux.tar.xz
	tar -xf linux.tar.xz
	rm linux.tar.xz
fi	

find linux/ \( -type f -or -type d \) | wc -l

find linux \( -name '*.asm' -or -name '*.c' -or -name '*.cpp' \) | wc -l

#Get number of all
# arr=( $(find $1/linux/ \( -type f -or -type d \) | wc -l
# temp=( $find $1/linux \( -name '*.asm' -or -name '*.c' -or -name '*.cpp' \) | wc -l	
find $1/linux -type f -and -mtime -30 | wc -l -exec echo " Modyfikowane w ostatnim miesiąc"

find $1/linux -type f -and -mtime -365 | wc -l -exec echo " Modyfikowane w ostatnim roku"

find $1/linux -type f -and -mtime -3650 | wc -l -exec echo " Modyfikowane w ostatnim roku"