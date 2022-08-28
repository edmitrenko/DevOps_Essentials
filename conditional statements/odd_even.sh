#!/bin/bash

echo -e "Insert word:"
read var


#result=$(( $var % 2))
#echo $result

if [ $(( ${#var} % 2 )) == 0 ]
then
	echo "even"
else
	echo "odd"
fi

