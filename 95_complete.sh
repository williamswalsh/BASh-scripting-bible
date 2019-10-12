#!/bin/bash

# Create a dummy command:
touch /usr/local/bin/myfoo
chmod +x /usr/local/bin/myfoo
echo -e "#!/bin/bash \necho 'hi'" > /usr/local/bin/myfoo

# Create some files:
touch a.bar a.foo b.bar b.foo

# Use the command and try auto-completion.
# Note that all files are displayed:
# myfoo <TAB><TAB>
# a.bar a.foo b.bar b.foo

# Now tell bash that we only want foo files.
# This command tells bash args to myfoo are completed
# by generating a list of files and then excluding
# everything # that doesn't match *.foo:
complete -f -X '!*.foo' /usr/local/bin/myfoo

# Try again:
# myfoo <TAB><TAB>
# a.foo b.foo

# Cleanup
# rm /usr/local/bin/myfoo