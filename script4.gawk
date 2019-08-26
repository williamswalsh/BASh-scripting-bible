# BEGIN - Before reading data
BEGIN{
  print "The latest list of users & shells"
  print " UserID \t Shell "
  FS=":"
}

{
print $1 "      \t " $7
}

# END - After reading data
END{
print "This concludes the listing"
}