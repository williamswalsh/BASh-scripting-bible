#!/bin/bash

outputFile='export.sql'
IFS=','

while read lName fName age city
do
  # cat output to outputFile
  # Take the input for cat from this file
  cat >> $outputFile << EOF
INSERT INTO users(lName, fName, age, city) VALUES (${lName}, ${fName}, ${age}, ${city});
EOF
done < ${1} # First param is inptut.csv file
