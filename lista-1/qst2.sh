#!/bin/bash

read -p "Digite o nome do primeiro diretorio: " d1
read -p "Digite o nome do segundo diretorio: " d2
read -p "Digite o nome do terceiro diretorio: " d3

echo "Diretorio 1"
procurar=$(find ${HOME} -type d -name ${d1})
cd ${procurar}
ls 

echo "Diretorio 2:"
procurar=$(find ${HOME} -type d -name ${d2})
cd ${procurar}
ls 

echo "Diretorio 3:"
procurar=$(find ${HOME} -type d -name ${d3})
cd ${procurar}
ls 
