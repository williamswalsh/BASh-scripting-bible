#!/bin/bash


## Prints out line number before line itself
sed '=' data1.txt

sed -n '/pattern_to_match/{
=
p
}' data1.txt

## l
## This lists a files lines
## This prints non-printable characters -> tabs -> \t
sed -n 'l' data11.txt

# w
# writing lines to a file
sed '1,4w fileToWriteTo.txt' data7.txt

# finds pattern billosa
# prints lines containing billosa to a file
# Billosas.txt
sed -n '/billosa/w Billosas.txt' data12.txt

# Prints matching strings to stdout
sed -n '/billosa/p' data12.txt



# r - Read
# [addr]r FILE_NAME
# Read data from file into sed
# data7 printed first
# data12 printed after
sed '2r data12.txt' data7.txt

# At line 2 read in data7 into data12 stream
sed '2r data7.txt' data12.txt

# At lines that match this pattern read in the data file into the data stream
sed '/number 2/r data12.txt' data7.txt
sed '/Doherty/r data7.txt' data12.txt

# At the last line read in data12 into d7 stream
sed '$r data12.txt' data7.txt

sed '/LIST/{
  r data 12.txt
  d
}' notice.std
