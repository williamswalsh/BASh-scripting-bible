#!/bin/bash
strWithData="hello"
emptyStr=""
# undefinedStr undefined
NONzeroLen="3"

if [ -z $strWithData ]
then
    echo "strWithData - String is empty"
else
    echo "strWithData - String is not empty"
fi


if [ -z $emptyStr ]
then
    echo "emptyStr - String is empty"
    
else
    echo "emptyStr - String is not empty"
fi


# Undefined strings are categorised as "empty"
if [ -z $undefinedStr ]
then
    echo "undefinedStr - String is empty"
else
    echo "undefinedStr - String is not empty"
fi


# if [ -n $NONzeroLen ]
# then
#     echo " -n NONzeroLen - String is empty"
# else
#     echo " -n NONzeroLen - String is not empty"
# fi