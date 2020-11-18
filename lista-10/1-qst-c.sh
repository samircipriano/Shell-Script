#!/bin/bash

cat $1 | sed -E 's/[^a-zA-Z0-9]//g'
