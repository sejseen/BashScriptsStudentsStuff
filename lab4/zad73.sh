#!/bin/bash
# ============================
#Autor: Konrad Tyma 218700
#Looong description here...

# ============================
# example:
# ./zad73.sh .
# ============================

#xargs lsof -p 1| wc

#Count all open files  a)
#a
echo | lsof | uniq -c | wc -l

#b)
echo | lsof | awk '$5 == "REG"' |sort -r -k7 -n  |head -10  

#c)
lsof | tr -s ' '

#d) Test pid = 1
#echo | lsof  | awk '$1 = 1' |awk '$5 == "REG"'| sort 


#cut
