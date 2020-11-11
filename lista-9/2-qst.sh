#!/bin/bash

read -p "Informe o nome do arquivo: " arq

for i in $(cat ${arq})
do
	cat ${arq} | grep -v '^*$'
	echo "Quantidade de linha em branco:"
	cat ${arq} | grep -E '^*$' | wc -l
done
