#!/bin/bash

lin_dir1=$(ls  ${HOME}/$1 | wc -l)
lin_dir2=$(ls  ${HOME}/$2 | wc -l)
lin_dir3=$(ls  ${HOME}/$3 | wc -l)

echo -e "${lin_dir1}'-$1'\n${lin_dir2}'-$2'\n${lin_dir3}'-$3'"|sort -n                                      
