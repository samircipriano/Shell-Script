#!/bin/bash

for x in $(seq 1 21)
do
	(( x % 2 == 0)) && echo "${x}"
	
done

echo "Scipty melhorado"

for i in $(seq $1 $2)
do
	(( i % 2 ==0)) && echo "${i}"
done
