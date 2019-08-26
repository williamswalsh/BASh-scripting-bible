#!/bin/bash



# Replaces test with big test
# s = Substitution
#
echo "This is a test" | sed 's/test/big test/'
# > This is a big test




cat data1.txt
# The quick brown fox jumps over the lazy dog.
# The quick brown fox jumps over the lazy dog.
# The quick brown fox jumps over the lazy dog.
# The quick brown fox jumps over the lazy dog.


# Substitute
# Cat with dog
# In file
sed 's/dog/cat/' data1.txt

# Mulitple commands in one command string ' cmd1; cmd2 '
sed 's/dog/cat/; s/brown/black/' data1.txt

# Can create sed command file
# fill it with commands
cat script1.sed
# s/dog/cat/
# s/brown/red/
# s/quick/really quick/

# Then pass it to sed and execute it on a file
sed -f script1.sed data1.txt




