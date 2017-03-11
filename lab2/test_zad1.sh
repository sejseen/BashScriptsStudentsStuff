#!/bin/bash
# ============================
# W zadanym katalogu pliki reguarne, ktore sa wzgledem siebie twardymi dowiazaniami
# przerobić na wiązania symboliczne (jeden zostawić - pozostałe symboliczne - ze ściezka względną)
# ============================
# example:
# ./test_zad1.sh .
# ============================

if [ $# -ne 1 -o ! -d $1 ]; then
    echo Błędny katalog
    exit
fi

for file in $1/*; do
    if [ ! -f $file ]; then
        continue
    fi
    idnode=$(ls -i $1/$file | awk '{ print $1 }')
    for file2 in $1/*; do
        if [ ! -f $file2 ]; then
            continue
        fi
        idnode2=$(ls -i $1/$file2 | awk '{ print $1 }')
        if [ $idnode = $idnode2 -a $1/$file != $1/$file2 ]; then
            echo $file $file2 $idnode $idnode2
            rm $file2
            ln -sf $file $file2
        fi
       
    done
done
