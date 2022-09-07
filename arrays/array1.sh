#!/bin/bash

# set the array arr
arr=(Sumy Kyiv Gytomyr Poltava Cherkasy Lviv Chernivtsi Ivano-Frankifsk Mukachevo Kharkiv Mykolaiv Odessa)

echo "Print all elements of array"
echo ${arr[@]}

echo "Print all indexes of array"
echo ${!arr[@]}

echo "Print Number of entries in the array"
echo ${#arr[@]}

echo "Print the value of the first element"
echo ${arr[0]}

echo "Print the value of last element of array"
echo ${arr[@]:(-1)}

echo "Print all elements in array starting from the position 2"
echo ${arr[@]:2}

echo "Print two elements from array starting from position 2"
echo ${arr[@]:2:2}

echo "Print last two parameters from array"
echo ${arr[@]:(-2)}

echo "========================================================"

for x in ${arr[@]} 
do
  printf "   %s\n" $x
done
echo "========================================================"

for y in ${!arr[@]}
do
  printf "%4d: %s\n" $y ${arr[$y]}
done

