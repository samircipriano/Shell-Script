#!/bin/bash

echo -e "Redirecionadores\n"
echo -e " | - Conecta a saída do comando anterior com a entrada do comando seguinte.\n"
echo -e "   Exemplo: cat a.txt b.txt | grep nome.\n"

echo -e "Redireciona a saída padrão do comando para um arquivo.\n"

echo -e " > - Sobrescreve o arquivo em questão.\n"
echo -e " >> - Adiciona a saída do comando ao final do arquivo, sem apagá-lo.\n"
echo -e "   Exemplo: >> echo 1 > arq.txt / echo 1 >> arq.txt\n"

echo -e "2> 2>> Redireciona a saída padrão de erros do comando para um arquivo.\n"

echo -e " 2> - Sobrescreve o arquivo em questão\n"
echo -e " 2>> - Adiciona a saída do comando ao final do arquivo, sem apagá-lo\n"
echo -e "   Exemplo: downshut 2> arq2 / bootre 2>> arq2\n"

echo -e "&> &>> Redireciona todas as saídas do comando para um arquivo"

echo -e " &> - Sobrescreve o arquivo em questão\n"
echo -e " &>> - Adiciona a saída do comando ao final do arquivo, sem apagá-lo\n"
echo -e "   Exemplo: cat /etc/* &> arq_out / cat /etc/* &>> arq_out\n"

echo -e " < - Redireciona o arquivo para a entrada padrão do comando\n"
echo -e "   Exemplo: ./teste.sh < arq.txt"
echo -e " << - Permite redirecionar a entrada padrão do comando para o documento escrito no bash\n"
echo -e "   Exemplos: mail www.google.com.br << fim\n"
echo -e " <<< - Permite redirionar a entrada padrão do comando para a string escrita no bash, equivalente a executar: echo "teste" | grep t\n"
echo -e "   Exemplo: grep t <<<"teste""

