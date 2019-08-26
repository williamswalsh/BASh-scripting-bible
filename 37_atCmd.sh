#!/bin/bash

start=$(python -c 'from time import time; print int(round(time() * 1000))')
count=0

echo "Starting Loop"
while [[ $count -lt 1000 ]]
do
  echo "hello loop"
  count=$[ $count + 1 ]
done


end=$(python -c 'from time import time; print int(round(time() * 1000))')
duration=$(( ${end} - ${start} ))
echo "Duration: $duration"
