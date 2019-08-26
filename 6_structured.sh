#!/bin/bash


if pwd
then
    echo "It worked"
fi

# pwd succeeds (returns 0) command successfull which represents a HIGH (1)


# N.B. -> Strange logic
# Search for wha
# if wha found
# returns success???? even though exit status would be exit 0 -> successfull
# executes if statements
if grep "wha" ./whawha
then
    echo "Found wha"
fi

