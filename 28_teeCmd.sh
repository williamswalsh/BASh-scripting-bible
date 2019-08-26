#!/bin/bash


# Think of T shape
# One input
# Two outputs


#STDOUT outFile
# \     /
# \    /
#  \  /
#  | |
#   T
#   |

# outputs to BOTH stdout & file
date | tee outFile


# Appends data to BOTH stdout & file
who | tee -a outFile
