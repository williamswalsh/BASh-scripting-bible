#!/bin/bash

# Report on disk usage

# Directories to make report based on
check_dir=" /Users/will /Users/will/notes/"

# Capture current date
date=$(date '+%m%d%y')

# Redirect all stdout to file
# exec > disk_space_$date.rpt

echo "Top Ten Disk Space Usage"
echo "For these directories: $check_dir"

for dir_check in $check_dir
do
  echo "The $dir_check directory:"

  du $dir_check 2> /dev/null|
  sort -rn|
  gsed '{11,$D; =}'|
  gsed 'N; s/\n//'|
  gawk '{printf $1 ":\t" $2 "\t" $3 "\n"}'

done

exit