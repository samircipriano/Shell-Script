#!/bin/bash

if  [ $1 == "strings" ] || [ $2 == "strings" ] || [ $3 == "strings" ] || [ $4 == "strings" ] || [ $5 == "strings" ];then
	echo "Help Strings"
	echo "= (se a string for igual)"
	echo "!= ( se a string for diferente)"
fi

if  [ $1 == "aritmetica" ] || [ $2 == "aritmetica" ] || [ $3 == "aritmetica" ] || [ $4 == "aritmetica" ] || [ $5 == "aritmetica" ];then
	echo "Help Aritmetica"
	echo " a -ge b "
	echo " a -lt b "
	echo " a -eq b "
fi

if  [ $1 == "arquivos" ] || [ $2 == "arquivos" ] || [ $3 == "arquivos" ] || [ $4 == "arquivos" ] || [ $5 == "arquivos" ];then
	echo "Help Arquivos"
	echo " -f e o nome do arquivo (sucesso se o arquivo for comum e falha caso nao exista) "
	echo " -e e o nome do arquivo (saber se o arquivos existe) "
	echo "-d e o nome do diretorio (saber o se o parametro for um diretorio "
fi

if  [ $1 == "variaveis" ] || [ $2 == "variaveis" ] || [ $3 == "variaveis" ] || [ $4 == "variaveis" ] || [ $5 == "variaveis" ];then
	echo "Help Variaveis"
	echo "-z e o nome da variavel (ira mostra se a variavel esta setada ou nao, com um valor diferente de vazio) "
	echo "-n e o nome da variavel (ira mostra se a varialvel nao vazia) "
fi

if  [ $1 == "logicos" ] || [ $2 == "logicos" ] || [ $3 == "logicos" ] || [ $4 == "logicos" ] || [ $5 == "logicos" ];then
	echo "Help Logicos"
	echo "-a (usado como and)"
	echo "-o (usado como or)"
	echo "! (usado antes do test, retorna o inverso do test)"
fi

