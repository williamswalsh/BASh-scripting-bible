#!/bin/bash

# Create temp files to store intermediate values
temp=$(mktemp -t test.XXXXX)
temp2=$(mktemp -t test2.XXXXX)

# Define functions
function diskSpace {
  df -k > $temp
  # dialog --textbox $temp 20 60
  zenity --text-info --title "Disk Space" --filename=$temp --width 750 --height 10
}

function whoseOn {
  who > $temp
  # dialog --textbox $temp 20 60
  zenity --text-info --title "Logged in users" --filename=$temp --width 500 --height 10
}

function memUsage {
  cat /proc/meminfo > $temp
  # dialog --textbox $temp 20 60
  zenity --text-info --title "Memory Usage" --filename=$temp --width 300 --height 500
}



# Selection dialog loop
while [ 1 ]
do
  # dialog --menu "Sys Admin Menu" 20 30 10 1 "Display disk space" 2 "Display Users" 3 "Display memory usage" 4 "Exit" 2> $temp2
  zenity --list --radiolist --title "Sys Admin Menu" --column "Select" --column "Menu Item" FALSE "Display disk space" FALSE "Display Users" FALSE "Display memory usage" FALSE "Exit" > $temp2

  # If not successfull
  if [[ $? -eq 1 ]]; then
    break;
  fi

  selection=$(cat $temp2)


  # Matching selection to function - BUG must use string tags which are used in previous zenity command - accidentally used number like in dialog 
  case $selection in
  "Display disk space")
    diskSpace ;;
  "Display Users")
    whoseOn ;;
  "Display memory usage")
    memUsage ;;
  "Exit")
    break ;;
  *)
    # dialog --msgbox "Sorry, invalid selection" 10 30
    zenity --info "Sorry, invalid selection"
  esac

done

# File cleanup
rm -f $temp  2> /dev/null
rm -f $temp2 2> /dev/null