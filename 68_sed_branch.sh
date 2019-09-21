#!/bin/bash


# b
# branching
# b command branches to end of sed statements
# for matching address 2,3
# for lines 2 & 3 don't do any sed statements
gsed '{2,3b ; s/This is/Is this/ ; s/line./test?/}' data18.txt


# Once it detects the pattern it branches to the label jump1
# this caused a sed statement to be skipped
# sed -> stream editor
# processes line-by-line
gsed '{
/first/b jump1 ;
s/This is/Is this/ ;
:jump1
s/This is/Is thass/}' data18.txt

# define label at start
# substitute first encountered space for comma
# if you find another comma branch to the label start
# form of looping
gsed '{
  :start
  s/,/ /1p
  /,/b start
}' data19.txt

# Simple equivalent function -> gsed 's/,/ /g' data19.txt