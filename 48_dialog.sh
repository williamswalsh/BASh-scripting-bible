#!/bin/bash

# Calendar
dialog --title "when is your birthday?" --calendar "cal" 06 50 2> cal.test.out

# File Selector
# dialog --title "select a file to use" --fselect $HOME/10 50 2> fselect.out

# Age Selector
# Output to text file
dialog --inputbox "Enter age: " 10 20 2>age.txt


# File reader
# Can read contents of file with scrollbars
dialog --textbox ~/.bash_profile 100 300


# Displays menu with 4 options
# Outputs selection number(the TAG) to test.txt(1-4)
# Number can be anything
dialog --menu "Sys admin menu: " 20 30 10 1 "Display disk space" 2 "Display wifi user passwords" 3 "Display user details" 4 "Exit" 2> test.txt

# Tags are words
dialog --menu "Sys admin menu: " 20 30 10 "one" "Display disk space" "two" "Display wifi user passwords" "three" "Display user details" "four" "Exit" 2> test.txt

dialog --title "Select your bitcoin file: " --fselect $HOME/ 10 50 2>fselect.out

# Open file from path written in file
open `cat fselect.out`

