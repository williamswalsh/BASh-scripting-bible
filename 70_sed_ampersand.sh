#!/bin/bash

# Want to add "" to words with the pattern .at
echo "The cat sleeps in his hat." | gsed '{s/.at/".at"/g}'
# This doesn't work

# &
# ampersand
# Can be used to replace the recognized pattern value
echo "The cat sleeps in his hat." | gsed '{s/.at/"&"/g}'



# Grouping \(\)
# System is a substring component
# Can be refered to using \1
echo "The System Administrator manual" | gsed '{s/\(System\) Administrator/\1 User/}'


# Makes cat the 1st substring component \1
echo "The furry cat is pretty." | gsed '{s/furry \(.at\)/\1/}'



echo "0871234624" | gsed '{
  :start
  s/\(.*[0-9]\)\([0-9]\{3\}\)/\1,\2/
  t start
}'



