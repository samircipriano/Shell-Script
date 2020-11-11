#!/bin/bash

read -p "Informe o nome do arquivo que possui a senha desejada: " arq

cont=0

if (( cat ${arq} | grep -E '[A-Z]' )); then
	((${cont} + 1 ))
fi

if (( cat ${arq} | grep -E '[A-Z]' )); then
	((${cont} + 1 ))
fi

if (( cat ${arq} | grep -E '[A-Z]' )); then
	((${cont} + 1 ))
fi

if (( ${conta} = 3)); then
	echo "Senha esta valida!"
else
	echo "Senha nao esta valida!"
