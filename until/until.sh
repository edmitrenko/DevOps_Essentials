#!/bin/bash

read -r -p "Enter name of file:" var

touch $var
file=$(ls -lh $var | awk '{print $9}')
head -c 4 /dev/urandom > $file
filesize=$(wc -c $file | awk '{print $1}')
echo filesize=$filesize

until [  $filesize -gt 2048 ]
do
echo "Filesize: $filesize"
cat $file | tee -a $file &> /dev/null
filesize=$(wc -c $file | awk '{print $1}')
done

