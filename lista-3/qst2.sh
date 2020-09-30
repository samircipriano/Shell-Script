#!/bin/bash

read -p "Nome do arquivo 1: " arq1
read -p "Nome do arquivo 2: " arq2
read -p "Nome do arquivo 3: " arq3

lin_arq1=$(grep -c "" ${HOME}/${arq1})
lin_arq2=$(grep -c "" ${HOME}/${arq2})
lin_arq3=$(grep -c "" ${HOME}/${arq3})


(( ${lin_arq1} > ${lin_arq2} )) && (( ${lin_arq1} > ${lin_arq3})) && echo "${arq1}" 
(( ${lin_arq2} > ${lin_arq1} )) && (( ${lin_arq2} > ${lin_arq3})) && echo "${arq2}" 
(( ${lin_arq3} > ${lin_arq1} )) && (( ${lin_arq3} > ${lin_arq2})) && echo "${arq3}" 
