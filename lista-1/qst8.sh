#!/bin/bash

echo "Substituição de Shell - 
O comando entre o "'$()'" é executado primeiro e o seu resultado toma o seu lugar no script 
- Exemplos: echo 'A data de hoje é"' $(date +%d-%m.%y)'" 
- Antes da linha ser executada, o shell executa o comando data +%d.%m.%y,e imprime o dia, mes e ano na tela."
echo "Subustituição de Variaveis de shell 
- O shell permite que se criem variáveis e que se lhes atribuam valores guardados durante a execução do shell. Os nomes das variáveis podem ser constituídos de quaisquer caracteres alfanuméricos. Para criar e ao mesmo tempo atribuir um valor à variável na mesma operação 
- Exemplo: "'$ estado = Paraiba 
echo $estado'" ele imprimira na tela Paraiba"
