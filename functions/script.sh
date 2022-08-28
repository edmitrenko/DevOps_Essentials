#!/bin/bash

function multiply {
	count=1
	for i in "$@"
	do
		mul=$(( $i * $i )) 
		multiply+=($mul)
    		count=$(($count+1))
	done
}

function plus {
	count=1
	for n in ${multiply[@]}
	do
		result=$(( $n + 1 ))
		echo $result
		count=$(($count1+1))
	done
}

multiply "$@"
plus "$@"

