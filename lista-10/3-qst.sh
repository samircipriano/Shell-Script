#!/bin/bash

cat $1 | sed -E 's/[0-9]{9}/**CENSURADO**/g'

