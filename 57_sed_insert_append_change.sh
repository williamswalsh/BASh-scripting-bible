#!/bin/bash

## Inserts line before third line
sed '3i\
>  This is an inserted line.' data7.txt

## Appends line after third line
sed '3a\
>  This is an appended line.' data7.txt

## Appends line after final line
sed '$a\
>  This is an appended line.' data7.txt

## Appends line after final line
sed '$a\
>  This is an appended line.\
>  This is another appended line.' data7.txt

### Change - c

## Changes line after final line
## Completely replaces the line
sed '$c\
>  This is an changed line.' data7.txt

## Changes line 3 to this line
sed '3c\
>  This is an changed line.' data7.txt

## Finds pattern and replaces all matching lines. ** ALL **
sed '/My terrible line/c\
>  This fantastic line.' data7.txt

