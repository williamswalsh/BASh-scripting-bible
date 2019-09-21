#!/bin/bash

# c Create
# z Zipped/Compressed
# f <file>

# put current date as yyyy-mm-dd HH:MM:SS in $date
date=$(date '+%Y-%m-%d_%H:%M:%S')

# Backup your Bash profile
# Adding datetime to make it distinct
# Will not overwrite any other backups
# (unless it is performed multiple times in the same second )
tar -czf /Users/will/backup/bash_profile_$date.tar.gz /Users/will/.bash_profile

# Could have a single backup which is overwritten during each backup
# Potential data risk if issue occurs when overwriting backup
# Maybe always have the last 'n' backups - 2/5/10 - depends on value of data
# tar -czf /Users/will/backup/bash_profile_backup.tar.gz /Users/will/.bash_profile

# Redirect STDERR to /dev/null
# This removes the warning message "Removing leading forward slash from directory paths"
# Benign warning
# More like standard behaviour really
tar -czf /Users/will/backup/bak.tgz /Users/will/.bash_profile 2> /dev/null
