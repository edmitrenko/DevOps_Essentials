#!/bin/bash

####1ST VARIANT
count=1
for i in "$@"
do
    echo Arg$count: "$i"
    count=$(($count+1))
done

array=("$@")
sum=()


#count=1
#while [ -n "$1" ]
#do
#echo "Parameter #$count = $1"
#count=$(( $count + 1 ))
#shift
#done


for ((i=0; i<$(($#-1)); i++));
do
sum+=($((${array[$i]}+${array[$((i+1))]})))
done
sum+=($((${array[0]}+(${array[@]:(-1)}))))
echo "${sum[@]}"

