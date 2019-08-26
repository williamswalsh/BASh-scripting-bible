#!/bin/bash



calculate(){
  # do some calculation
  # Return result - (string)?
  echo "2342"

}


resultFromCalc=`calculate`
echo "External: $resultFromCalc"



# Process # of inputs 1 or 2 inputs only 
if [ $# -eq 0 ] || [ $# -gt 2 ]
