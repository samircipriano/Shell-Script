#!/bin/bash

echo "Total de Downloads"

awk '{print $1"-"$3}' < in4.txt
