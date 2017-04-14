#!/bin/bash 

if [ $# -ne 1 -o ! -f $1 ]; then
	echo Błędna liczba argumentów
	exit
fi

#Test usage of pipes and redirection
ls -l | grep "\.txt$"