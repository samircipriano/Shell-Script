#!/bin/bash

read -p "Informe o numero para iniciar a contagem: " a
read -p "Informe o numero de termino a contagem: " b

for ((i=${a}; i<$((${b}+1)); i++));
do
	echo $i >> soma
done
paste -s -d + soma | bc
rm soma
