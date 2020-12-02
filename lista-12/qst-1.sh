#!/bin/bash

A=( $* ) 

numM=1000000000000000
for b in ${A[*]}; 
do
	if [ $b -lt $numM ] ;
	then
		numM=$b;
	fi
done

echo "Maior valor: ${numM}"
