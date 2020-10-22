#!/bin/bash

a=$1
b=$2
c=$3

contd=0

for x in $*;
do
	lin=$(cat ${x} | wc -l)
	if [ ${lin} -ge 5 ];then
		contd+=1
	fi
done

if (( ${contd} > 2 ));then
	echo "Passou do tamanho critico!"
else
	echo "Nao passou do tamanho critico!"
fi
