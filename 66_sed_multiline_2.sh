#!/bin/bash

# d
# delete
# deleted the combination of 2 lines as N was used
gsed 'N ; /System Administrator/d' data15.txt
# Only removes the line including the string
# No line combination deletion
gsed 'n ; /System Administrator/d' data15.txt
# Behaving in same way
gsed 'N ; /System Administrator/D' data15.txt

# Get a blank line
# if there is a matching string on next line
# D -> delete the first(original) string
gsed '/^$/{N ; /Header/D}'  data14.txt
# d -> delete the combined strings
gsed '/^$/{N ; /Header/d}'  data14.txt

# P -> print the first line
# If next line contains pattern
# print first line
gsed -n 'N ; /System Administrator/P'  data15.txt



