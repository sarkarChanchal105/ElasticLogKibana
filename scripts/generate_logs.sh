#!/bin/bash
file='file_'`date +%Y-%m-%d`'.log'
echo $file
echo '' > ../files/$file
while :
do
echo "Hi this is a test on "`date` >> ../files/$file
sleep 1
done
