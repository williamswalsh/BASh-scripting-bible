#!/bin/bash
# Scripts remove consecutive blank lines
# Start address - a single character - /./
# ,
# End address - a blank line - /^$/
gsed '/./,/^$/!d' data22



# This remove all blank lines
# Then concatenates on a blank line onto each line
# Only single blank lines exist
gsed '/^$/d; $!G ' data22


# Delete leading blank lines
# From first line which contains a character
# to the last line
# delete inverted
# delete everything outside this range
gsed '/./,$!d'

# Delete trailing blank lines
# Any line that contains only a newline character
# if last line -> delete it
# Append Next line to pattern space
# branch to start
gsed '{
:start
/^\n*$/{$d; N; b start }
}' data24
