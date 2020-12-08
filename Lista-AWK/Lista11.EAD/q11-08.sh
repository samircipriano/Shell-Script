#!/bin/bash

<<'DESC'
Melhore o script da questão anterior para que além do número de aprovados e reprovados, 
seja exibido um histograma das médias, isto é, o número de médias entre 0 e 9.9999, 
o número de médias entre 10 e 1.9999, ...., o número de médias entre 8 e 9.99999 e o número de médias 
entre 9 e 10.

DESC

#dados forcados
export DBG_ENV=$(test "${DBG^^}" == "'YES'" && echo "1" || echo "0")

if ((${DBG_ENV})); then
    #!Ajuste de depuracao! erro se linha não nula não for inserida abaixo
    echo "debug mode!" >/dev/null
    dataFile="${PWD}/dados/datafile11-06.txt"
    testFile="${PWD}/dados/dados4.awk"
else
    if [ -n ${1} ]; then
        dataFile="${1}"
    else
        dataFile="${PWD}/../dados/datafile11-06.txt"
    fi
fi
clear

#ponto de entrada(main)
#!TESTA A PORCARIA DO BUG QUE ME FEZ PERDER 3 HORAS!!!
dummy=$(awk --version 2>/dev/null)
if [ $? -ne 0 ]; then
    echo "Versão do AWK instalada - BUGADA!!!!!!!!"
    echo "Instale a gawk"
    exit 1
fi

awkScript='
function histPrinting(data) {
    num=val=count="";
    count=((data*100)/50);
    while(++num<=count){
        val=val "▓";
    }
    return val;
}

BEGIN{
    FS=" ";
}
{
	studentName="";
	sumGrades=0;
	gradeCount=0;
	for ( field=1; field<=NF; field++ ){
		if( $field ~ /[0-9]+/ ){
            gradeCount++;
			sumGrades += $field;
		} else {
			studentName = studentName " " $field;  #!concatena "" a mais, pode-se limpar depois
		}
	}
    avg=sumGrades / gradeCount
	avgGrades[ studentName ] = ( avg );
    if( avg >= 70){
        approved++
    }else{
        reproved++
    }
}
END{
    #gerar 1-10 registros para histograma em bar(vetor esparso)
    for( student in avgGrades ){
        colselect=int(avgGrades[ student ] / 10);
        bar[colselect]++;
    }
    #encontra o topo do histograma
    for(i=10; i >=0 ; i--){
        printf "%2d %2d  %s\n", i, int( bar[i] ), histPrinting(int( bar[i] ));
    }
    printf "Foram aprovados %d alunos\n", approved
    printf "Foram reprovados %d alunos\n", reproved
}
'
echo "Calculando histograma das médias das notas contidas em ${dataFile}"
awk "${awkScript}" <"${dataFile}"

echo 'FIM'
