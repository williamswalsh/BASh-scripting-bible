#!/bin/bash
URL="https://magicseaweed.com/Ballybunion-Surf-Report/3701/"
# wget $URL


# Output file is named end of URL
# If no file at end of name file saved as index.html
# wget www.website.com/william  # Output file = william
# wget www.website.com/  # Output file = index.html

# -o capture the "command log" in a file
# wget -o CMD_LOG_FILE $URL

# -q quiet mode
# -O
# Capture output in file
# wget -O CMD_OUTPUT_FILE $URL


# Check if link exists
# wget --spider $URL

# -nv
# Non verbose output
wget  -nv --spider $URL
# https://magicsettytyaweed.com/Ballybunion-Surf-Report/3701
# -> wget: unable to resolve host address ‘magicsettytyaweed.com’

# https://magicseaweed.com/Ballybunion-Surf-Report/bash/:
# -> Remote file does not exist -- broken link!!!

wget  -o log_file --spider $URL


# 200 OK always printed!!! NB
# Fails - 404 + 200 OK
# Suceeds - 200 OK


# check_url=$(wget --spider $URL 2>&1 )
# echo "check_url: $check_url"


if [[ $check_url == *404* ]]
then
  echo "Bad web address"
  echo "URL: $URL invalid"
  echo "Exiting script..."
  exit 1
fi


wget -o /tmp/89_wget.log -O /tmp/89_wget.html  --no-cookies $URL


# Str param expansion
# Sed alternative
# bad_url=$(echo ${check_url/*404*/404})