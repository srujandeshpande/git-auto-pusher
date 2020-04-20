clear
echo "Welcome to git-auto-pusher! This was created by Srujan Deshpande"
read filename

m1=$(md5sum "$filename")

while true; do
  # md5sum is computationally expensive, so check only once every 10 seconds
  sleep 1

  m2=$(md5sum "$filename")

  if [ "$m1" != "$m2" ] ; then
    git add .
    git commit -m "$m2"
    git push 
  fi
done