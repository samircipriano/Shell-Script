#!/bin/bash

read -p "Informe um numero: " num

calc=$(( $num % 2 ))

if [ $calc = 0 ]; then
	echo "Par"
else
	echo "Impar"
fi
