#!/bin/bash

lin_arq=$(grep -c "" ${HOME}/$1)

(( ${lin_arq1} > 5 )) && echo "GOOD"
