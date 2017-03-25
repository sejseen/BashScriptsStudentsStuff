#!/bin/bash
# ============================
# W podanym katalogu znaleźć wszystkie pliki o uprawnieniach: read write dla właściciela, oraz wyłącznie read dla grupy i innych
# ============================
# example:
# ./test_script1.sh .
# ============================

if [ $# -ne 1 -o ! -d $1 ]; then
    echo Błędny katalog
    exit
fi

#11* *0* **1
find $1 -perm -600 -and ! -perm -020 -and -perm -001 -and -type f -print
# all permisions for user, whatever(- before u) for others and groups
find $1 -perm -u+rwx
#equals
find $1 -perm -777	
