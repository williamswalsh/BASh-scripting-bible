#!/bin/bash

# Prints any lines with double spaces
sed -n '/  /p' data13.txt

# Dolla Dolla bills y'all
sed -n '/\$/p' data13.txt

sed -n '/\//p' data13.txt # Forward slash
sed -n '/\\/p' data13.txt # Bach slash



# Anchor Characters
# ^ -> caret -> beginning of line
# $ -> dollar -> End of line
sed -n '/^\^/p' data13.txt

# NB -> If a Caret appears anywhere other than the start of the regex it is treated as a normal character
sed -n '/text ^/p' data13.txt

# Retrieve all blank lines from file
sed -n '/^$/p' data13.txt

# Retrieve all blank lines from file
# And print line number
sed -n '/^$/{
=
p
}' data13.txt

# dot character .
# Match all characters except newline character


# Character classes
# []
# Can be used to match upper and lower cases.
echo "Yes this is awesome!" | sed -n '/[Yy][Ee][Ss]/p'
echo "yes this is awesome!" | sed -n '/[Yy][Ee][Ss]/p'
echo "yessus this is awesome!" | sed -n '/[Yy][Ee][Ss]/p' # Match

# if you only want to match yes use anchor characters
echo "yes" | sed -n '/^[Yy][Ee][Ss]$/' # Match

# NB -> Doesn't match whole pattern
# **
echo "ye this is awesome!" | sed -n '/[Yy][Ee][Ss]/p'


# Look for character not in character class
# [^]
# Any character besides 1,2,3,4v5,6,7,8,9,0
echo  "0871234567" | sed -n '/[1234567890]/p' # Match
echo  "0871234567" | sed -n '/[^1234567890]/p' # doesn't match


# Ranges
# Numeric
echo  "0871234567" | sed -n '/[0-9]/p' # Match
# Character-ic
echo  "a" | sed -n '/[A-a]/p' # Match
echo  "d" | sed -n '/[A-a]/p' # no match
echo  "d" | sed -n '/[A-Za]/p' # no match