#!/bin/bash

read -p "Informe um diretorio: " dir

cd ${HOME}/${dir}
ls -al | grep "^d"
ls -l | grep '^-..x'
ls | grep '.*\.sh'
