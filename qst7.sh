#!/bin/bash

a="(ls -l $1)"
b="(ls -l $2)"
c="(ls -l $3)"

echo ${a} >> info.txt
echo ${b} >> info.txt
echo ${c} >> info.txt
