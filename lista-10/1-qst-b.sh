#!/bin/bash

cat $1 | sed -E 's/[1-9]{1,}//g'
