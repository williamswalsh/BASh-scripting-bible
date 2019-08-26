#!/bin/bash
# IFS = Internal Field Separator

# Save original IFS state
IFS_OLD=$IFS

# Setting the internal field separator to only use comma
# Defaults to space, tab & newline
IFS=$','
echo "$IFS"


for county in $(cat counties); do
    echo "County: $county";
done



# Restore the internal field separator
IFS=${IFS_OLD}
echo "$IFS"