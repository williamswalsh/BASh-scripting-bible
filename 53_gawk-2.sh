#!/bin/bash

# Before processing input print this
# Then print input (data1.txt)
# Then finally print string below
gawk 'BEGIN {print "Hello World!"}
{print $0}
END {print "End of File"}' data1.txt

# BEGIN - Before reading data
# END - After reading data


