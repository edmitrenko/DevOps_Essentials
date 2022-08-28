#!/bin/sh


if [ $# -lt 2 ]
then
	echo "$1"
elif [ $# -gt 2 ] && [ $# -lt 4 ]
then 
	echo "$3"
else
	echo "Invalid number of arguments"
fi
