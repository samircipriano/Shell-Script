#!/bin/bash

ls $1 &> /dev/null && echo "Sim" || echo "Não"
