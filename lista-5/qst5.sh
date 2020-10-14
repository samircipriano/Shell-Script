#!/bin/bash

for x in ${*}
do
	find -name ${x} && echo "SIM" || echo "NÃO"
done	
