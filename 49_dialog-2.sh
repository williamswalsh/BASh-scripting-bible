#!/bin/bash

# Create temp files to store intermediate values
temp=$(mktemp -t test.XXXXX)
temp2=$(mktemp -t test2.XXXXX)

# Define functions
function diskSpace {
  df -k > $temp
  dialog --textbox $temp 20 60
}

function whoseOn {
  who > $temp
  dialog --textbox $temp 20 60
}

function memUsage {
  cat /proc/meminfo > $temp
  dialog --textbox $temp 20 60
}


# Selection dialog loop
while [ 1 ]
do
  dialog --menu "Sys Admin Menu" 20 30 10 1 "Display disk space" 2 "Display Users" 3 "Display memory usage" 4 "Exit" 2> $temp2

  # If not successfull
  if [[ $? -eq 1 ]]; then
    break;
  fi

  selection=$(cat $temp2)


  # Matching selection to function
  case $selection in
  1)
    diskSpace ;;
  2)
    whoseOn ;;
  3)
    memUsage ;;
  4)
    break ;;
  *)
    dialog --msgbox "Sorry, invalid selection" 10 30
  esac

done

# File cleanup
rm -f $temp  2> /dev/null
rm -f $temp2 2> /dev/null