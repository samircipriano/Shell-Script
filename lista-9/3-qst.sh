#!/bin/bash

read -p "Informe o nome do arquivo que tenha numeros no formato de moeda do Brasil: " arq

cat ${arq} | grep -E '[R][$] [0-9]{1,3}\.[0-9]{3},[0-9]{2}' || cat ${arq} | grep -E '[0,9]{1,3},[0-9]{2}' && echo "Numero Valido!"
