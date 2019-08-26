#!/bin/bash

# Exit value of a fx is the exit value of the last statement in that fx
# $? -> value of exit status of last statement

# Use backticks to evaluate a fx and then capture the output of that function
result = `fx`
