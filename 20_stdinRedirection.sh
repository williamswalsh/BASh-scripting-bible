#!/bin/bash


# redirecting file input
exec 0< 20_testfile
count=1

while read line
do
  echo "Line #${count}: $line"
  count=$(( $count + 1 ))
done
