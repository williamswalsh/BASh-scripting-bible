#!/bin/bash

# NB: Sed doesn't affect the original file.

# Delete all the lines of the file
sed 'd' data1.xml

# Delete the 3rd line of the file
sed '3d' data1.xml

# Delete the 2nd to the 4th line of the file
sed '2,4d' data1.xml

# Delete the 2nd to the last line of the file
sed '2,$d' data1.xml

# Pattern match lines and delete them
sed '/Bally*/d' data7.txt

## Remove the 23rd line onwards from stream
## Output to file
l | awk '{print $9}' | sed '23,$d' > file



## Gets 9th column - delete some lines - replace
l | awk '{print $9}' | sed '1,3d' | sed '2d' | sed 's!^!./!g'