#!/bin/bash

# Inserting
# Insert at line 3
gsed '3i\
insert this line at the 3rd line.' data12.txt

# Append
# Append to line 3
gsed '3a\
insert this line at the 3rd line.' data12.txt

# Printing
# Print lines 2 & 3
gsed -n '2,3p' data5.txt

