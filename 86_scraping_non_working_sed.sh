#!/bin/bash

# Extract the current weather for chicago

# No good example simple website to scrape
URL="https://weather.com/en-IE/weather/today/l/EIXX0014:1:EI"

LYNX=$(which lynx)
TMPFILE=$(mktemp tmpXXXXXX)


$LYNX -dump $URL > $TMPFILE
# cat $TMPFILE
echo "Right Now in Dublin rain" < $TMPFILE

conditions=$(cat $TMPFILE | sed -n -f sedCondition)   # sedCondition -> Filename
cat $conditions

# rm -f $TMPFILE
