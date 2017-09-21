#!/bin/bash

#nprocs=(5 20 50)

# plotting the data using gnuplot
gnuplot plotratio.plt

# converting .svg into .pdf

#for p in "${nprocs[@]}"
#do
    #rsvg-convert -f pdf -o "hlc.pdf" "hlcresult"    
    #rsvg-convert -f pdf -o "true_positive_n_${p}result.pdf" "true_positive_n_${p}result"

#done
