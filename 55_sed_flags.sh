#!/bin/bash


# s/target/replacment/flags
# flag can be
# A number(2,78,978)
# s/a/b/4 -> 4 times

# g -> Global all possible times

# p -> Print each instance found
sed 's/brown/black/p' data1.txt

# Prints single instance of each line
sed 's/no, I did not/yes, I did/g' data5.txt

# -n -> Suppresses output from sed editor
# Prints nothing
sed -n 's/no, I did not/yes, I did/g' data5.txt


# -n + p -> Prints the line
sed -n 's/no, I did not/yes, I did/p' data5.txt

# w -> Prints the results of the substitution to a file
sed 's/yes/no/w newLines.txt'

# String delimiter
# / can be replaced with ! to assist with difficult target & replacements strings 's!\/Users\/will\/Downloads!deleted!g'
sed 's/Core/CORE/'
sed 's!Core!CORE!'


# NB - Modify only line number 2 (NO FLAG) -> (The second line)
sed '2s/brown/black/' data1.txt

# Modify only line 2 to $
# $ -> end of text
sed '2,$s/brown/black/' data1.txt > output.txt

