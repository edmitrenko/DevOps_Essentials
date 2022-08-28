#!/bin/bash

##array=("$@")

##for i in "${array[@]}";
for i in $@;
do
        ##let sum=$sum+$i	
	##sum=$(expr $sum + $i)
	(( sum+=$i ))
done
echo SUM:$sum
echo ARG NUMBERS:$#
echo AVG:$(echo $sum / $# | bc )


##echo $array

#for n in $@;
#do
#	let sum=($sum+$n)
#done
#echo The total is $sum
