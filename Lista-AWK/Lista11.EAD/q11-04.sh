#!/bin/bash

<<'DESC'
Dado um arquivo com todos os downloads efetuados pelos usuários no último mês, deseja-se totalizar quanto cada usuário baixou. 

Segue o formato do arquivo:

Nelson www.google.com.br 250
Arr445 www.testes.com/dbz.wmv 20050
Nelson www.uol.com.br 300
Vianna debian.org/9.7.0.iso 800555

DESC

#dados forcados
export DBG_ENV=$(test "${DBG^^}" == "'YES'" && echo "1" || echo "0")

if ((${DBG_ENV})); then
    #!Ajuste de depuracao! erro se linha não nula não for inserida abaixo
    echo "debug mode!" >/dev/null
    dataFile="${PWD}/dados/datafile11-04.txt"
else
    if [ -n ${1} ]; then
        dataFile="${1}"
    else
        dataFile="${PWD}/../dados/datafile11-04.txt"
    fi
fi
clear

#ponto de entrada(main)
awkScript='
{
    users[ $1 ] = $1;
	traffic[ $1 ] += $3;
}
END{
    print "Name      Traffic"
    print "----      ------"
	for( user in users ){
	    printf "%-10s %s\n", user, traffic[ user ];      
	}
}
'

echo "Totalizando tráfego contido em ${dataFile}"
awk "${awkScript}" < "${dataFile}"

echo 'FIM'
