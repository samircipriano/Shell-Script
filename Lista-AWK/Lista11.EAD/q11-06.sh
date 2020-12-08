#!/bin/bash

<<'DESC'
Dado um arquivo com nomes e notas de alunos, imprima a lista de alunos aprovados, i.e. com
média maior ou igual a 70. 
Segue o formato do arquivo:

Nelson Antunes de Coimbra 100 100 100
José Edyson 50 100 50
Joao das Neves Pereira Pádua e Talz 100 0 100
Amanda Selfie 100 70 70

DESC

#dados forcados
export DBG_ENV=$(test "${DBG^^}" == "'YES'" && echo "1" || echo "0")

if ((${DBG_ENV})); then
    #!Ajuste de depuracao! erro se linha não nula não for inserida abaixo
    echo "debug mode!" >/dev/null
    dataFile="${PWD}/dados/datafile11-06.txt"
else
    if [ -n ${1} ]; then
        dataFile="${1}"
    else
        dataFile="${PWD}/../dados/datafile11-06.txt"
    fi
fi
clear

#ponto de entrada(main)
awkScript='
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
    students[ studentName ] = studentName;
	avgGrades[ studentName ] = ( sumGrades / gradeCount );
}
END{
    print "Name                                    Average";
    print "----                                     ------";
	for( student in students ){
        if( avgGrades[ student ] >= 70 ){
            printf "%-40s %s\n", student, avgGrades[ student ];
        }	    
	}
}
'

echo "Calculando as médias das notas contidas em ${dataFile}"
awk "${awkScript}" <"${dataFile}"

echo 'FIM'
