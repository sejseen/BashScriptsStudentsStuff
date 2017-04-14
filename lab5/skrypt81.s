#!/bin/bash
# ============================
#Autor: Konrad Tyma 218700

#Napisz skrypt, który przeanalizuje listę wszystkich dostępnych użytkowników w 
#systemie (czyli zawartość pliku /etc/passwd) i wypisze nazwy tych użytkowników (pierwsze pole w pliku),
#którzy mają ustawiony katalog główny 
#(czyli / ) lub czarną dziurę (czyli /dev/null) jako katalog domowy (przedostatnie polew w pliku).


awk '
END {BLACK_HOLE = "/dev/null";  HOME = "/";
if (BLACK_HOLE == $6 || HOME == $6) {
		print $1;
	}}' /etc/passwd
