#!/bin/bash

# length awk
plik1=$1

awk 'BEGIN{RS="[.?!]"} NF>0 {
    totalNF;
    if (NF > max) {
        totalNF+=NF;
        max = NF;
        line = $0;
    }
    medium = totalNF/NR
  }
  
  END{print medium; print max; print line}' $plik1