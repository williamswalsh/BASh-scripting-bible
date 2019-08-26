#!/bin/bash


# Expressions can be evaluated in []
echo "$[1+4]"


# OR
# Binary expressions
# zero(0) with non-zero value(1)
echo "$[ 0 | 1 ]"


# Strange behaviour?
echo "$[ 1 & 1 ]"


# Modulo operator
echo "$[ 20 % 7 ]"

exit 23
