#!/bin/bash



# First var passed to script
echo "$1"

# Total number of var passed  
echo $# 

# Get the value of the last parameter
echo "${!#}"
# Not 
# echo "${$#}"

# Combines all params into single word
echo "$*"

# Combines all params into single string -> can be iterater over to divide back into separate variable values
echo "$@"
