#!/bin/bash

read -p "informe o nome do arquivo: " arq

cat ${arq} | tr -d '\n' 
