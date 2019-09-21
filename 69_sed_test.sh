#!/bin/bash

# test command
# modifies the flow of the sed script
# test command jumps to a label
# -> based on the outcome of a substitution
# branches is substitution is succesfull
# [address]t [label]
# If you don't specify a label it jumps to end of script

# could test for something then exit if not found
gsed '{
  s/first/matched/
  t
  s/This is the/No match on/
}' data20.txt

echo ""
echo "empty line"
echo ""


# How to do something if there is a match? & do nothing if there isn't??
gsed '{
  s/first/cancelled/
  t
  s/This is the/No match on/
}' data20.txt

# Recursive sed function finds all commas and replaces them
gsed '{
  :start
  s/,/ /1p
  t start
}' data19.txt