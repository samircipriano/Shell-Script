#!/bin/bash

<< 'DESC'
Considere o seguinte arquivo de entrada com a lista dos dez nomes mais comuns no Brasil para Meninos e Meninas. 

Pede-se que o arquivo seja separado em dois, um apenas para meninos e outro para meninas.

Ranking Meninos Ranking Meninas
1 Miguel 1 Sophia
2 Davi 2 Alice
3 Arthur 3 Julia
4 Pedro 4 Isabella
5 Gabriel 5 Manuela
6 Bernardo 6 Laura
7 Lucas 7 Luiza
8 Matheus 8 Valentina
9 Rafael 9 Giovanna
10 Heitor 10 MariaEduarda

DESC

#dados forcados
export DBG_ENV=$(test "${DBG^^}" == "'YES'" && echo "1" || echo "0")

if ((${DBG_ENV})); then
    #!Ajuste de depuracao! erro se linha não nula não for inserida abaixo
    echo "debug mode!" > /dev/null
    dataFile="${PWD}/dados/datafile11-02.txt"
else
    if [ -n ${1} ]; then
        dataFile="${1}"
    else
        dataFile="${PWD}/../dados/datafile11-02.txt"
    fi
fi
clear

#ponto de entrada(main)
maleDataFile="${PWD}/male.txt"
femaleDataFile="${PWD}/female.txt"
echo -e "Separando os dados colunares do arquivo: ${dataFile} para ${maleDataFile} e ${femaleDataFile}"
awk '{ print $1, $2 }' "${dataFile}" > "$maleDataFile"
awk '{ print $3, $4 }' "${dataFile}" > "$femaleDataFile"


echo 'FIM'
