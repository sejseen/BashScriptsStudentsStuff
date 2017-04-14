#!/bin/bash

dir=$1

( find $dir -type f ) -exec awk '{totalNF; if (NF > 0) {totalNF+=NF;} medium = totalNF/NR; print medium; print FILENAME; }' {} \;