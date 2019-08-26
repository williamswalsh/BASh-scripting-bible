#!/bin/bash


if test
then
    echo "No expression returns a true"
else
    echo "No expression returns a false"
fi

emptyStr=""
if test $emptyStr
then
    echo "emptyStr returns a true"
else
    echo "emptyStr returns a false"
fi


# Expressions

# Mutually exclusive
# -n str      length greater than 0
# -z str      length of 0


# NB
# > < are interpreted as fileredirection operators in bash
# They must be escaped
# Source of BUGS***
# str > str2
str="apple"
str2="banana"
# Source of BUGS***
# Bug example below
# File redirection occurs successfully
# banana file created in local dir
# no str comparison occurs
if [ $str > $str2 ]
then
    echo "String 1 greater than string 2"
else
    echo "String 2 greater than string 1"
fi


# Must escape > char -> \>
if [ $str \> $str2 ]
then
    echo "String 1 greater than string 2"
else
    echo "String 2 greater than string 1"
fi



# sort command sorts aCBcbA -> abcABC
# \>  command sorts aCBcbA -> ABCabc



