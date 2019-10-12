#!/bin/bash

# list all commands available to you
compgen -c

# list all aliases available to you
compgen -a

# Task: show all the bash built-ins
compgen -b

# Task: show all the bash keywords
compgen -k

# Task: show all the bash functions
compgen -A function

# Get full list -> Grep for something
compgen  -abckA function | grep -i --color klog