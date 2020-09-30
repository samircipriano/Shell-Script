#!/bin/bash 

read -p "Texto proibido: " tex_proib

cat ${HOME}/$1 | grep ${tex_proib} &> /dev/null && mv ${HOME}/$1 /tmp
cat ${HOME}/$2 | grep ${tex_proib} &> /dev/null && mv ${HOME}/$2 /tmp
cat ${HOME}/$3 | grep ${tex_proib} &> /dev/null && mv ${HOME}/$3 /tmp
