#!/bin/bash


# interesting prompt ability using case.
# Could also use :toupper: command to reduce number of case possibilities.
# Could just take first letter.
read -p "Enter y/n:" keyboard
case $keyboard in
y|Y|YES|yes)
    echo "Yes";;
n|N|NO|no)
    echo "No";;
*)
    echo "Invalid option";;
esac
