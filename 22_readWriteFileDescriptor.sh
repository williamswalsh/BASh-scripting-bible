#!/bin/bash



exec 3<> testFile
read line <&3   # input is from fileDescriptor located at location 3
echo "Line: $line" # Print to stdout
echo "Line: $line" >&3 # Print to inputFile
