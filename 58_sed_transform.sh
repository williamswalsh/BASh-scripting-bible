#!/bin/bash

## Transform -> y
## Char to char Mapping
## All upper-case to lower-case
echo 'Hello World' | sed 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'


## Print matches found in file
sed -n '/Volume-liters:/p' surfboards.txt
>> Volume-liters:22
>> Volume-liters:26

## Print Specific Lines
## Print lines 2 to 3 in surfboards.txt
sed -n '2,3p' surfboards.txt


## Print before its altered
# -n no ouptut
# /3/ pattern
# p -> print line
# s// -> substitute
sed -n '/3/{
p
s/line/test/p
}' data8.txt