#!/bin/bash

# -n => no newline char at end of echo
echo -n "Enter age: "
read age
echo "$age"

# -p => prompt
read -p "Please enter weight(kgs): " weight
echo "$weight"


# -t => timeout
# If no input
# exits with non-zero exit status
read -p "Please enter BMI: " -t 10 BMI
echo "$?"
echo "$BMI"


# -n2 => exits read after 2 characters are entered 

# -s => hides the characters typed into the console
# useful for passwords


cat inputFile | while read line
do
    echo "$line"
done    