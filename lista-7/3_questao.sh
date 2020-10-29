#!/bin/bash

while true; do
	read -p "Menu
	d : Mostrar os diretorios da pasta atual.
	f : Mostrar os arquivos da pasta atual.
	v : Conteudo do arquivo.
	cd: Mudar de Diretorio.
	q : para sair
	Digite uma opçao: " menu

	case ${menu} in
		"d") pwd ;;
		"f") ls ;;
		"v") read -p "digite o nome do arquivo" arq
			cat ${arq} ;;
		"cd") read -p "digite o nome do diretorio" dir
			cd /${HOME}/${dir} ;;
		"q") break
	esac
done
