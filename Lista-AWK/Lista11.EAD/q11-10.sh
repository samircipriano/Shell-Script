#!/bin/bash

<< 'DESC'
Uma empresa possui uma política de criação de nomes de usuários: 
Dado o nome completo da pessoa, usar o primeiro nome seguido pela primeira letra de cada sobrenome 
(ou conectivo da dos de). 
Exemplo: Thiago Gouveia da Silva ganha o nome de usuário ThiagoGdS, 
enquanto Josias de Pádua Maranhão Ayres Junior, ganha o nome de usuário JosiasdPMAJ. 
Foi enviada uma lista contendo os dados dos funcionários da empresa para que você criasse os usuários. 
Sua tarefa é, dado a entrada, criar uma lista com os nomes de usuários que devem ser criados.
Segueo Formato da lista:

Thiago Gouveia da Silva
34 Anos
Professor
João Pessoa

Josias de Pádua Maranhão Ayres Júnior
26 Anos
Pedreiro
Campina Grande

Victor Hugo de la France
79 Anos
Escritor
França

Manequias dos Arais de Fortal
45 Anos
Padeiro e Confeiteiro, mas também faz tudo
Belo Jardim, mas também Arraial do Cabo

DESC

#dados forcados
export DBG_ENV=$(test "${DBG^^}" == "'YES'" && echo "1" || echo "0")

if ((${DBG_ENV})); then
    #!Ajuste de depuracao! erro se linha não nula não for inserida abaixo
    echo "debug mode!" > /dev/null
    dataFile="${PWD}/dados/datafile11-10.txt"
else
    if [ -n ${1} ]; then
        dataFile="${1}"
    else
        dataFile="${PWD}/../dados/datafile11-10.txt"
    fi
fi
clear

#ponto de entrada(main)
awkScript='
function get_loginName( nameParts ){
    result=nameParts[1];
    for (i=2; i<=length(nameParts); i++) {
        result=result substr(nameParts[i],1,1);
    }
    return result;
}

{
    if ( NR % 5 == 1 ){
        for ( fields=1; fields <= NF; fields++ ){
            parts[ fields ] = $fields;            
        }        
        logins[$0] = get_loginName( parts );
        delete parts   #limpa lixo/dados maioires anteriores
    }    
}
END{
    print "Name                                 login Name";
    print "----                                     ------";
	for( fullName in logins ){
        printf "%-40s %s\n", fullName, logins[fullName];
	}
}
'
awk "${awkScript}" <"${dataFile}"

echo 'FIM'
