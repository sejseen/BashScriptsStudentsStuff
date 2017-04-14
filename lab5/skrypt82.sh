#!/bin/bash
# ============================
#Autor: Konrad Tyma 218700

#. Napisz skrypt, który przeanalizuje listę wszystkich dostępnych użytkowników
#w systemie (czyli zawartość pliku /etc/passwd) i wypisze nazwy tych użytkowników 
#(pierwsze pole w pliku), mających ustawioną wartość /bin/false, /usr/bin/nologin 
#lub /sbin/nologin jako domyślną powłokę (ostatnie pole w pliku).


cat /etc/passwd | awk '
	BEGIN { FS = ":"}
	( $7 == "/bin/false" || $7 == "/usr/bin/nologin || /sbin/nologin" ){print $1}'
