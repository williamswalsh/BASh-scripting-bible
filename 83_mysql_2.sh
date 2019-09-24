#!/bin/bash

0> /dev/null

# Retrieves the specific mysql version specified by which
MYSQL=$(which mysql)

# -e <COMMAND>
# Execute single command
# mysql -u root -e <COMMAND>
# $MYSQL test -u root -e 'select * from test.user;'

$MYSQL test -u root <<EOF
show tables;
select * from test.user;
EOF


# Can capture statements into var also
statements="show tables;select * from test.user;"

$MYSQL test -u root <<EOF
$statements
EOF

if [[ $? -eq 0 ]]; then
  echo "MySQL commands succeeded"
else
  echo "MySQL commands failed"
fi

