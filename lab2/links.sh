#!/bin/bash

if [ $# -ne 2 -o ! -d $2 ]; then
	echo Błędny katalog lub liczba argumentów
	exit
fi	

#-L - Follow symbolic links.
#-xtype l - File is symbolic link
#-samefile name - File refers to the same inode as name. When -L is in effect

find -L $1 -xtype l -samefile $2  

for file in $1
	do
		if [ -L $file ]; then
			path=$(readlink $1/$file)
		fi

		if [ -L $file -a $path = $2 ]; then
			echo $file
		fi	
	done  
