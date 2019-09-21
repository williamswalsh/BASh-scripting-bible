#!/bin/bash
#
# FS              -> field separator
# OFS             -> output field separator
#
# RS              -> record separator
# ORS             -> output record separator
#
# FIELDWIDTHS     -> The length of each field space separated -> 5 8 1 9 3 2 3

gawk 'BEGIN{FS="," ; OFS="æ"} {print $1, $2, $3}' data25


# FIELDWIDTHS
# Gawk ignores FS if FIELDWIDTHS set
# Creates columns based off of FIELDWIDTHS values
gawk 'BEGIN{FIELDWIDTHS="3 5 2 5" ; OFS="---"} {print $1, $2, $3, $4}' data25



# RS
# record separator
gawk 'BEGIN{RS="" ; OFS="---"; ORS="€"} {print $1, $2, $3 }' data26


# ORS defaults to newline character
gawk 'BEGIN{RS="" ; OFS="---"; } {print $1, $2, $3 }' data26

gawk 'BEGIN{RS="" ; OFS=" "; IGNORECASE=1; } {print ARGC, FNR, FILENAME, ARGIND, NR, OFMT, RLENGTH, RSTART, }' data26


#                 2     gawk     data26
gawk 'BEGIN{print ARGC, ARGV[0], ARGV[1]}' data26



gawk 'BEGIN{
  print ENVIRON["HOME"]
}'

gawk 'BEGIN{
  print ENVIRON["PATH"]
}'

# Print the first & last "field"
gawk '{print $1 $NR}'

# Defining variables
# reassigning them mid script to a different data type
gawk 'BEGIN{
testing="hello world!";
print testing;
testing="2019";
print testing;
}'

# Arithmetic built into gawk ( thank god! not like bash )
gawk 'BEGIN{
  x=4;
  x= x*2 + 6;
  print x;
}'


