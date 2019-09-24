#!/bin/bash

# Status
mysql
\s status
\h help
\c clear

# Login
mysql <DATABASE> -u <USER> -p <PASSWORD>

# Show choice of DB
show databases;

# Select database to use
use <DATABASE>;

# Show choice of table
show tables;

# Create a db
create database <DB_NAME>

# Grant access permission -> not working
> grant select, insert, delete, update, on test.* to test identified by 'test'

# Make table
create table employee ( empId int not null,
    -> firstName varchar(30),
    -> lastName varchar(30),
    -> salary float,
    -> primary key (empId));



# Displays all previous mysql commands
cat ~/.mysql_history

# Mysql config file
cat ~/.my.cnf
