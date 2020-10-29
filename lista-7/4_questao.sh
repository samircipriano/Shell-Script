#!/bin/bash

while read a ; do
	wc -l ${a}
	wc -c ${a}
done < help_test_2.sh
