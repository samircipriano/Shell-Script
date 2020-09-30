#!/bin/bash

num=$(id -u) && (( ${num} == 0)) && echo -e "Erro!" && exit
