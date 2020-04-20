#!/bin/sh

clear
echo "Welcome to git-auto-pusher! This was created by Srujan Deshpande"
echo "Please enter the name of the file to be tracked. All files in this repo will be pushed."
read filename
echo "Please enter your username"
read username
echo "Please enter your password"
read password

m1=$(md5sum "$filename")

while true; do
  # md5sum is computationally expensive, so check only once every 10 seconds
  sleep 1

  m2=$(md5sum "$filename")

  if [ "$m1" != "$m2" ] ; then
    git add .
    git commit -m "$m2"
    ##{ echo "$username"; echo "$password" ; } | git push 
    m1=$m2
  fi
done