#!/bin/bash

arq1=$(find ${HOME} -type d -name $1 | wc -l)
arq2=$(find ${HOME} -type d -name $2 | wc -l)
arq3=$(find ${HOME} -type d -name $3 | wc -l)

soma=$(( ${arq1} + ${arq2} + ${arq3} ))

echo -e "Total de linhas: ${soma}"

