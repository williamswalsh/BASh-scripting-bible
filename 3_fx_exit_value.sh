#!/bin/bash


if pwd
then
	echo "Command Working 1"
fi

# Inverse logic **** NB ******
# pwd executes successfully
# pwd exits with 0
# Command successfull operate if statements


# Get the previous command exit value
echo $?

if grep "wha" /Users/will/repository/BASh/whawha
then
	echo "Command Working 2"
fi


# test sorts it so that if's behave like they do in other languages
if test 5 -eq 5
then
	echo "Apples for Apples"
fi



# Is var valurised
if test var1
then
	echo "var1 valurised"
fi
