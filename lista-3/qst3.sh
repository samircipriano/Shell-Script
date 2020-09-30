#!/bin/bash

lin_arq1=$(grep -c "" ${HOME}/$1)
lin_arq2=$(grep -c "" ${HOME}/$2)
lin_arq3=$(grep -c "" ${HOME}/$3)

echo -e "${lin_arq1}'-$1'\n${lin_arq2}'-$2'\n${lin_arq3}'-$3'"|sort -n
