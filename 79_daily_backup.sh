#!/bin/bash

# put current date as yyyy-mm-dd HH:MM:SS in $date
date=$(date '+%Y-%m-%d_%H:%M:%S')

# Create a distinct archive file
archive_file=bash_profile_$date.tgz

# Destination
# Location of backup
# Which can be used on a user by user basis ${HOME}
destination=${HOME}/backup/${archive_file}

# Config file which contains files to backup & compress
config_file=${HOME}/backup/files_to_backup

# File to store files which weren't processed as they don't exist
reject_file=${HOME}/backup/rejected_files

# TODO - Test this
# Directory / File checking
# If dir doesn't exist create it
if [ ! -d ${HOME}/backup ]
then
  mkdir ${HOME}/backup
fi

# TODO - Test this
# If config file doesn't exist
if [ ! -f ${config_file} ]
then
  touch ${config_file}
  echo "Config file doesn't exist"
  echo "Creating empty config file: ${config_file}"
  echo "Please add files to backup in ${config_file} then rerun. Exiting Script."
  exit 1
fi

# Start file counter
file_number=1

# Redirect std input to the name of config file
exec < $config_file

# Read first file path
read file_path

# This loop creates file_list
########################################################################################################################
while [ $? -eq 0 ]
do
  if [ -f $file_path -o -d $file_path ]
  then
      # If file exists add to list
      # Space separated
      file_list="$file_list $file_path"
  else
      echo
      echo "File $file_path on line $file_number of $config_file doesn't exist"
      echo "Cannot backup non-existent file"
      echo "Adding file to $reject_file"
      echo "$file_path\n" >> $reject_file       # Append file to reject list
  fi

  # Increment counter
  file_number=$[$file_number + 1]

  # Read next file path
  read file_path
done
########################################################################################################################


echo "Creating archive..."

# creating archive file at destination
# N.B.: no loop required when files are listed space separated
tar -czf $destination $file_list 2> /dev/null

if [ $? -eq 0 ]
then
  echo "Archiving complete"
  echo "Archive located at $destination"
else
  echo "Unable to create archive"
  echo "Possible cause: $config_file must contain at least one newline character at end of the first line"
fi
exit 0