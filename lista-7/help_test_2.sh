#!/bin/bash

while true; do

	read -p "Digite uma opçao:	
	1- logica
	2- aritmetica
	3- strings
	4- variaveis
	5- arquivos
	6- extended
	sair- Para sair do programa
	Opçao de Escolha: " opc

	case ${opc} in
		"1") echo "Help Logica, -a (usado como and), -o (usado como or), ! (usado antes do test, retorna o inverso do test)" ;;
		"2") echo "Help Aritmetica, a -ge b(-ge = a maior que ou igual), a -lt b(-lt = a menor que), a -eq b(eq= igual) " ;;
		"3") echo "Help Strings, = (se a string for igual), != ( se a string for diferente)" ;;
		"4") echo "Help Variaveis, -z e o nome da variavel (ira mostra se a variavel esta setada ou nao, com um valor diferente de vazio), -n e o nome da variavel (ira mostra se a varialvel nao vazia) " ;;
		"5") echo "Help Arquivos, -f e o nome do arquivo (sucesso se o arquivo for comum e falha caso nao exista), -e e o nome do arquivo (saber se o arquivos existe), -d e o nome do diretorio (saber o se o parametro for um diretorio) " ;;
		"6") echo "Um recurso sintatico do shell, por tanto, possui algum comportamento especial que [ nao possui. Voce nao precisa mais citar variaveis por que [[ lida como strings vazias e strings com espaços em brancos de forma mais intuitiva." ;;
		"sair") break ;;
	esac
done
