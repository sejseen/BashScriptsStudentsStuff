#!/bin/bash
# Autor: Konrad Tyma 218700
# Usuwanie z zadanego katalogu wszystkich plikow ktorych nazwy #pokrywają sie z nazwami w drugim katalogu. Nie usuwaj podkatalogow.
#Nie usuwaj rowniez plikow o nazwach pokrywajacy sie z nazwami #podkatalogow w drugim katalogu

for file in `ls $1`
	do
	for secondFile in `ls $2`
	do
		if [ $file == $secondFile ] && [ -f $file ]
		then
		rm $S1/$file
		fi
	done
done

