#!/bin/bash


# Find out what an alias evaluates to
command -V ls
# ls is aliased to `clear && ls -ltAhGF'

# Also has same effect
type -a .
# . is a shell builtin

type -a ..
# .. is aliased to `cd ../'


type caller



# COMMAND
command -V ..
# .. is aliased to `cd ../'

# Essentially you would use command to bypass "normal function lookup". For example, say you had a function in your .bashrc:
#
# function say_hello() {
#    echo 'Hello!'
# }
# Normally, when you run say_hello in your terminal bash would find the function named say_hello in your .bashrc before it found, say, an application named say_hello. Using:
#
# command say_hello
# makes bash bypass its normal function lookup and go straight to either builtins or your $PATH. Note that this function lookup also include aliases. Using command will bypass both functions and aliases.
#
# If the -p option is provided bash bypasses your custom $PATH and uses its own default.
#
# The -v or -V flags bash prints a description (short for -v, long for -V) of the command.