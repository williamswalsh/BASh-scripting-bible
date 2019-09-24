#!/bin/bash

# B       Batch
# s       silent
# e
# x       XML output


dbs=$(mysql test -u root -Bse 'show databases;')
# mysql test -u root -X 'show databases;'
# for db in $dbs
# do
#   echo $db
# done