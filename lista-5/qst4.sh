#!/bin/bash

for x in $(seq 1 101)
do	

	echo $[2+($RANDOM)] >> num.txt
done
wc -l num.txt
