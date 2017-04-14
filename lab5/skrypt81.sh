#!/bin/bash
# ============================
#Autor: Konrad Tyma 218700

#Napisz skrypt, który przeanalizuje listę wszystkich dostępnych użytkowników w 
#systemie (czyli zawartość pliku /etc/passwd) i wypisze nazwy tych użytkowników (pierwsze pole w pliku),
#którzy mają ustawiony katalog główny 
#(czyli / ) lub czarną dziurę (czyli /dev/null) jako katalog domowy (przedostatnie polew w pliku).



cat /etc/passwd | awk '
	BEGIN { FS = ":"}
	( $6 == "/" || $6 == "/dev/null" ){print $1}'