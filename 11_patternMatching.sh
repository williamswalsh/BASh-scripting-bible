#!/bin/bash


# grep handles these cases
# No requirement to create function for this

# regex
# Pattern Matching
user="william"
regex="wi*iam"
if [[ $user == "$regex" ]]
then
    echo "Matches pattern";
else
    echo "Doesn't match pattern";
fi



