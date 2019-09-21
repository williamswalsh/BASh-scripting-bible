#!/bin/bash


# *.* ??
# Create archive file from Directory structure
tar -cf <FILENAME> /Users/will/*.*
tar -cf BackUpFile.tar /Users/will/repository/BASh/DirectoryToBackUp/*
# cat BackUpFile.tar
# Users/will/repository/BASh/DirectoryToBackUp/1_file000644 000765 000024 00000000000 13532603377 022652 0ustar00willstaff000000 000000 Users/will/repository/BASh/DirectoryToBackUp/2_file00064
# 4 000765 000024 00000000027 13532603427 022660 0ustar00willstaff000000 000000 This is a modification

# Error stating that removing leading "/"
# path is made to be relative so
# that archive can be open in any directory
# Redirect STDERR to oblivion
tar -cf BackUpFile.tar /Users/will/repository/BASh/DirectoryToBackUp/*  2>/dev/null


# z option
# Compressed version of the file
tar -czf <FILENAME> /Users/will/*.*
tar -czf BackUpFile.tar /Users/will/repository/BASh/DirectoryToBackUp/*


# Can create file
# containing list of files to backup

exec < $CONFIG_FILE
read FILE_NAME

