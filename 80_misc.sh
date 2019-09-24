#!/bin/bash
VAR=0
# -n
# Is VAR defined
if [ -n $VAR ]
then
  echo "-n is true"
fi

USER_ACCOUNT=will

# Get all users processes
# ps -u USER_ACCOUNT

# Are users processes running
ps -u $USER_ACCOUNT > /dev/null
if [ $? -eq 0 ]
then
  echo "This user has running proceses"
fi

# xargs
# Executes commands from STDIN
# Gets all users processes PID's
# Echo's them to the STDOUT
ps -u $USER_ACCOUNT > /dev/null |gawk '{print $2}'|xargs -d '\n' echo

# ****** NB ******
# Get all files which belong to a specific user
find / -user $USER_ACCOUNT # > $REPORT_FILE


# Shows disk usage at file by file
du -s /Users/will/*

# Shows disk usage at directory by directory level
du -S /Users/will/

# And sort it
# r reverse order
# numerical sorting
du -s /Users/will/*|sort -rn






