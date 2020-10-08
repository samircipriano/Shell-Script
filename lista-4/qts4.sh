#!/bin/bash
workdir=(/tmp/workdir)
mkdir $workdir
cd $workdir
ls $1 || echo “Por favor crie o arquivo ${workdir}/${1}”
ls $1 || exit 1
ls $2 || echo “Por favor crie o arquivo ${workdir}/${2}”
ls $2 || exit 1
ls $3 || echo “Por favor crie o arquivo ${workdir}/${3}”
ls $3 || exit 1
cat $1 $2 $3 | tr ‘ ‘ ‘\n’ | sort | grep -v “comentario”

