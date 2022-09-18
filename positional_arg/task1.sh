#!/bin/bash

count=1
for i in "$@"
do
echo "Arg$count: $i"
count=$(( $count + 1 ))
done


argvals=("$@")
avgres=()
for ((n=0;n<$((${#argvals[@]}-1));n++))
do
avgres+=($((${argvals[$n]}+${argvals[$(($n+1))]})))
done
avgres+=($((${argvals[0]}+(${argvals[$n]}))))

echo "${avgres[@]}"
