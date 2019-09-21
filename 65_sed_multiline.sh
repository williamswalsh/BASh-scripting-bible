#!/bin/bash

# Remove a line after a heading

# Removes all blank lines
gsed '/^$/d' data14.txt

# n
# next line
# Single line next command
# add next line to processing space of sed
#
# Removes line after line which contains pattern
gsed '/Header/{n ; d }' data14.txt



# N
# Combines next line with existing line
# (Will remove any newline character -> Which can cause issues)
# Here the line containing Header is removed as it is combined with the second line
gsed '/Header/{N ; d }' data14.txt


# Find pattern
# Get next line
# replace newline with space
gsed '/first/{N ; s/\n/ / }' data14.txt

# tr
# translate
# replace characters with other characters
tr '\n' ' ' < data14.txt



# replace string stretched over multiple lines
gsed 'N ; s/System Administrator/Desktop User/;' data15.txt

gsed '
s/System Administrator/Desktop User/
N
s/System\nAdministrator/Desktop\nUser/
' data15.txt

gsed '
s/System Administrator/Desktop User/
N
s/System\nAdministrator/Desktop\nUser/
' data15.txt

gsed '
N
s/System\nAdministrator/Desktop\nUser/
' data15.txt



