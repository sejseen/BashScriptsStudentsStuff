#!/bin/bash
# ============================
#Autor: Konrad Tyma 218700


# ============================
# example:

# ============================

if [ $# -ne 1 -o ! -d $1 ]; then
	echo Błędny katalog lub liczba argumentów
	exit
fi	

variablePSAUX=$(ps aux)

ps aux | awk 'BEGIN {RS="[\n]"} 
{
	CPU_LOAD=0;
	OPERATION_MEMORY_BUSY=0;

} END {print CPU_LOAD; print OPERATION_MEMORY_BUSY}'