#!/bin/bash

# Shell Wrapper
# Reverses current order of strings
gsed -n '{ 1!G ; h ; $p }' $1