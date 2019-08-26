#!/bin/bash


addArray(){
  local sum=0;
  local newArr;

  # 1 - capturing array parameter
  newArr=($(echo "$@"));

  # 2 - iteration
  for value in ${newArr[*]};
  do
    sum=$[ $sum + $value ]
  done
  echo $sum
}

# 3 - Defining
myArray=(1 3 5 7 9 11 13);
arg1=$(echo ${myArray[*]})

addArray $arg1
addArray $myArray
addArray ${myArray[*]}
