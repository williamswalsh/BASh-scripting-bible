#!/bin/bash


# Rule -> If no file specified in command -> defaults to STDIN as input

# gawk '{ <command> }' filename

# gawk '{ <command> }'
# gawk '{ print <String> }'
gawk '{ print "Hello World!" }'
# Command just waits for text to come in through STDIN
# type something + hit 'enter'
# CTRL + D -> exits command

# Prints the first word
# Field Separator = Default Field Separator = /w = any whitespace character
gawk '{print $1}' data2.txt

# Comma field separator
gawk -F, '{print $1}' data2.txt

# Colon field separator
gawk -F: '{print $1}' data2.txt

# Can string together mutliple commands by using ; character
echo "My cvv code is 721" | gawk '{ $5="301"; print $0 }'
# Output => My cvv code is 301

# LIKE SED
# Can create gawk command file
# fill it with commands
cat script1.gawk
# { print $1"'s home directory is " $5 }

# Then pass it to gawk and execute it on a file
gawk -f script1.gawk data2.txt


# Then pass it to gawk and execute it on a file
gawk -f script3.gawk data3.txt



