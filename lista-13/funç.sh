#!/bin/bash

function maior {
        if [ $1 -gt $2 ]; then
                echo $1         
        else
                echo $2
        fi
}
function menor {
        if [ $1 -lt $2 ]; then
                echo $1
        else
                echo $2
        fi
}

function maiorArray {
maior=0
for i in $*;
do
	if [ $i -gt ${maior} ];
	then
		maior=$i
	fi
done

}

function menorArray {
menor=
for i in $*;
do
	if [ $i -gt $menor ];
	then
		menor=$i
	fi
done

}
