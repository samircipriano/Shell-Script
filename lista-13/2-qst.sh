#!/bin/bash

#Me confundi muito na hora de passar para a funçao

source funç.sh

num=$(sed -n '/^[[:digit:]]/p' $1 )

declare num

result=$( maiorArray ${num} )
result2=$( menorArray ${num} )

echo "Maior ${result} Menor: ${result}"
