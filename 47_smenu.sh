#!/bin/bash

function addem {
  echo $[ $1 + $2 ]
}

PS3="Enter option: "

select option in "Add them" "Display logged on users" "Mexit" "Exit"
do
 case $option in
   "Exit")
      break;;
    "Add them")
      addem 44 78 ;;
    *)
      clear
      echo "Sorry, wrong selection."
  esac
done
clear
