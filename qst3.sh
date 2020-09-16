#!/bin/bash

echo "Diretorio 1:"
procurar=$(find ${HOME} -type d -name $1)
cd ${procurar}
ls

echo "Diretorio 2:"
procurar=$(find ${HOME} -type d -name $2)
cd ${procurar}
ls

echo "Diretorio 3:"
procurar=$(find ${HOME} -type d -name $3)
cd ${procurar}
ls
