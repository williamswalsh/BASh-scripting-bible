#!/bin/bash

function testIt {

  local newArr

  # Line not working
  # newArr=(;`echo "$@"`)
  
  newArr=($(echo "$@"));


  echo "The new array value is: ${newArr[*]}"
}

myArr=(2 4 6 8)
echo "Original Array: ${myArr[*]}"

testIt ${myArr[*]}
