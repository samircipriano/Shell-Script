#!/bin/bash

for i in {A..Z};
do
	mkdir $i
	cd ./$i
	touch $i.py
	echo "#!/usr/bin/env python3" &>> $i.py
	echo "print('Rapi Hellow Uin!" &>> $i.py
	chmod 777 $i.py
	cd -
done
