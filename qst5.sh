#!/bin/bash
data ="$(date +%Y-%m-%d)"
caminho=$(pwd)

echo "Criando diretorio..."
mkdir ${data}  2> /bin/${data}
cp -R ${caminho} /bin/${data}
