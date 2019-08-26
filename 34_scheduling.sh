#!/bin/bash

start=$(python -c 'from time import time; print int(round(time() * 1000))')
count=0

while [[ $count -lt 100000 ]]
do
  # echo "Loop #${count}"
  count=$[ $count + 1 ]
done


end=$(python -c 'from time import time; print int(round(time() * 1000))')
duration=$(( ${end} - ${start} ))
echo "Duration: $duration miliseconds"
