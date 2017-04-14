#!/bin/bash
# ============================
#Autor: Konrad Tyma 218700

#Skrypt 92

#Konwerter JSON do XML

#if [ $# -ne 1 -o ! -d $1 ]; then
#	echo Błędny katalog lub liczba argumentów
#	exit
#fi	

function jsonValue() {
KEY=$1
num=$2
awk -F"[,:}]" '{for(i=1;i<=NF;i++){if($i~/'$KEY'\042/){print $(i+1)}}}' | tr -d '"' | sed -n ${num}p
}

urlArray=( "curl -s -X GET http://twitter.com/users/show/$1.json"
"curl -s -X GET http://twitter.com/users/show/$1.json"
"curl -s -X GET http://twitter.com/users/show/$1.json"
"curl -s -X GET http://twitter.com/users/show/$1.json") 

echo ${urlArray[$x]} | jsonValue profile_image_url 1
echo ${urlArray[$x]} | jsonValue profile_image_url 2