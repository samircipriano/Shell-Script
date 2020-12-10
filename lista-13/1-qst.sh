#!/bin/bash

source funç.sh

read -p "Digite dois nimeros: " a b

result=$( maior ${a} ${b} )
result2=$( menor ${a} ${b} )

echo "Maior: ${result} Menor: ${result2}"

