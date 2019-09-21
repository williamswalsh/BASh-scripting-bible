#!/bin/bash

# Remove html tags from file


# v1
# Removes all of <b>helloworld</b>
gsed 's/<.*>//g' /Users/will/FTL/output.html


# v2
# Doesn't remove all of <b>helloworld</b>
gsed 's/<[^>]*>//g' /Users/will/FTL/output.html


# v3 - removes all newline characters only - \n
gsed 's/<[^>]*>//g ; /^\n*$/d; ' /Users/will/FTL/output.html


# v4 - removes all whitespace - \s
gsed 's/<[^>]*>//g ; /^\s*$/d; ' /Users/will/FTL/output.html