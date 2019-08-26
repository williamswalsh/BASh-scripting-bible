#!/bin/bash

function addem {
  echo $[ $1 + $2 ]
}

function menu {
  clear
  echo
  echo -e "\t\tWilliams menu\n"
  echo -e "\t1. Do a"
  echo -e "\t2. Do b"
  read -n 1 option
}

while [ 1 ]
do
    menu
    case $option in
    0)
      break ;;
    1)
      addem 3 5;;
    *)
      clear
      echo "Sorry wrong selection";;
    esac
    echo -en "\n\n\t\t\tHit any key to continue"
    read -n 1 newline
done
clear
