#!/bin/bash
menu(){
  clear;
  echo -e "Williams Menu:"
  echo
  echo -e "1)\tOption 1:"
  echo -e "2)\tOption 2:"
  echo -e "3)\tOption 3:"
  echo -e "4)\tOption 4:"
  echo
  read -p "Please select an option(1-4): " menuOption
  clear
}
fx2(){
  echo "This is an echo in a called fx."
}

menu
echo "You entered the string: $menuOption"

case $menuOption in
  1)echo "fx1";;
  2)fx2;;
  3)echo "fx3";;
  *)echo "catch all statement - sorry wrong selection";;
esac



# -n switch
# gets single char
# read -n 1 -p "Please enter a single character(y/n): " singleCharResponse
# echo -e "\n$singleCharResponse"
