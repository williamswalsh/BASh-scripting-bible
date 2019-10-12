#!/bin/bash


declare -p


# hash command in Linux system is the built-in command of bash which is used to maintain a hash table of recently executed programs.
# It remembers and shows the program locations. It will give the full pathname of each command name.
# add a command to the hashmap
hash command

# Lists the commands in the hashmap
hash



# pushd popd
pushd <DIRECTORY>
# Lists all dirs in directory stack

# Retrieves the lastly added dir from the stack
# top of the queue
popd <DIRECTORY>

# Lists the dir stack
dirs -v

# Clears the dir stack
dirs -c


# shell options
# List options
shopt

# Set
shopt -s <option>

# Unset
shopt -v <option>
