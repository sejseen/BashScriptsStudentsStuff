#!/bin/bash
# Konrad Tyma

NAME_OF_FILE=$1 #Plik z lista plikow do polaczenia
if [[ $# == 1 ]] then
 exit
fi 
if [[ -f $NAME_OF_FILE ]] then
	while read; p do 
	FILENAME=$(basename "$p")
	FILENAME="${p%.*}"
	echo $FILENAME >> content.txt
	cat p >> content.txt
	done <$NAME_OF_FILE
else
	cat * > content.txt
		if [ ls -type d ] then 
			for file in `ls`
			do
				if [[ $file == $NAME_OF_FILE ]]
				#TO DO ADD CONTENT 
				fi
			done
		fi
fi

# Podmiana nazwy pliku

rm $NAME_OF_FILE
mv "content.txt" $NAME_OF_FILE 
