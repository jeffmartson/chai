#!/bin/sh

count=$1
#IFS=$'\n';
base=https://secureview.isolation.site/uploads/

if [ -z $count ]; then
  count=10
fi

for file in $(ls -t file*html | head -$count); do
  echo $base$file;
done;
 


