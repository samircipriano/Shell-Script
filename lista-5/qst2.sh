#!/bin/bash

a=${pwd}
for x in $(find ./${a} -type f -exec wc -l {} + )
do
	echo ${x}
	echo "------------"
done

echo " --- melhorando o scripty ----"

for x in $(find ./${a} -type f -exec wc -l {} + |sort -nr )
do
        echo ${x}
        echo "------------"
done

echo " ---- melhorando mais ainda ----"

read -p "informe o nome do Diretorio: " dir

for x in $(find ${HOME}/${dir} -type f -exec wc -l {} + )
do
        echo ${x}
        echo "------------"
done
