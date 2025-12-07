#!/bin/bash

func_sum() {
	count=$#
	sum=0
	for n in "$@";do
		sum=$((sum+n))
	done
	echo $sum
}

func_sum_expansion() {
	count=$#
	sum=0
	for ((i=1; i<= count; i++));do
		sum=$((sum+ ${!i}))
	done
	echo $sum
}


result=$(func_sum 1 2 3 4 5 7)
echo  "func returns: $result"

result=$(func_sum_expansion 7 5 4 3 2 1)
echo  "func_sum_expansion  returns: $result"


