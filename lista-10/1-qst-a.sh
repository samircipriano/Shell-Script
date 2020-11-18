#!/bin/bash

cat $1 | sed -E -e 's/[a-z]//g' -e 's/[A-Z]//g'
