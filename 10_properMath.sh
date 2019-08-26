#!/bin/bash

## operators:
##############
# || && logical 
# | & bitwise 
# ** exponential 
# >> << bitwise shifting
# > < Comparative -> NB no escaping required


# No escaping of > symbol to \>
# Cannot be mistaken for file redirection operator
if (( 3 > 4 ))
then
    echo " 3 is greater than 4";
else
    echo " 3 is not greater than 4";
fi
