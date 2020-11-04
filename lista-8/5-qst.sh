#!/bin/bash

read -p "informe o nome do arquivo: " arq
a=$(10)
for i in ${arq}
do
	cat ${arq} | head -${a} 
	read -p "Aperte Enter para continuar " entr
	if [ ${entr} = ' '];
	then
		cont=$((${a}+10))
		cat ${arq} | head -cont
	fi
done
