#!/bin/bash


calculationFx (){
              out=$[$1 + $2]
              echo "Result: $out";
}

# fx calling just use name -> no brackets
# fx_name

# exit status of a fx is the exit status of the last command of the fx


# echo "Last command/function exit status: $?"


# can capture the output of the function using echo in the function
result=`calculationFx 22 12`
echo "Call result: $result"
# can pass values to functions
# calculationFx 20 10 44
#               $1 $2 $3
