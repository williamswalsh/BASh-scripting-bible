#!/bin/bash
var=c
case "$var" in 
    -a) echo "Found -a" ;;
    -b) echo "Found -b" ;;
    c) echo "Found c" ;;
    *) echo "Not an option" ;;
esac

