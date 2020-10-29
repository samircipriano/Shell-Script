#!/bin/bash


while true ; do
	sleep 2s
	if [ -e key ] ;then
		echo "O arquivo existe"
	else
		echo "Arguardando a criaçao do arquivo key"
	fi
done
