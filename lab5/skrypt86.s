#!/bin/bash
# ============================
#Autor: Konrad Tyma 218700
#Napisz skrypt, który będzie obliczał sumaryczne obciążenie procesora oraz zajętość pamięci operacyjnej,
#analizując wynik działania komendy ps aux (odpowiednie 
#dane znajdujące się w trzeciej oraz czwartej kolumnie wyniku). [poprosze o jedno, zmyslne wykonanie komendy awk]


ps aux | awk ' 
BEGIN {sumaCPU = 0;  sumaMEM = 0}
{sumaCPU = sumaCPU + $3; sumaMEM = sumaMEM + $4}
END {print sumaCPU, sumaMEM} '