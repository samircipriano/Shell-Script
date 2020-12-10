#!/bin/bash

function pingTest() {
	echo "Espere um pouco..."
	ping -c 8 $1 &>> /dev/null && echo "Ok" || echo "FALHA"
}

pingTest $1
