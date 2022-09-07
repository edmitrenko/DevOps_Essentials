#!/bin/bash

my_arr=(CentOS Ubuntu Debian Linux Mint Solaris MacOS Windows)


# count the total number of elements in an array
total=${#my_arr[*]}

echo "Total array elements are: $total"

#display value of each element of an array
echo "Array Elements values:"

for val in ${my_arr[*]}
do
  printf "   %s\n" $val
done

#display each array’s element value with a key
echo "Array Elements values with key:"
#echo "${my_arr[*]}"


for key in ${!my_arr[*]}
do
  printf "%4d: %s\n" $key ${my_arr[$key]}
done

