#!/bin/bash

# Spaces -> buffers

# Pattern space -> processing area of sed
# hold space -> storage area

# h -> copies to hold space from pattern space
# g -> copies to pattern space from hold space
# H -> appends to hold space from pattern space
# G -> appends to pattern space from hold space
# x -> swaps space stored data

gsed -n '/first/ {h;p;n;p;g;p}' data17.txt

# created "reverse alias for this"
# reverse the lines of a file
# $p prints entire value of pattern space
gsed -n '{1!G ; h; $p }' data17.txt


