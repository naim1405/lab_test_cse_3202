#!/bin/bash

# if(condi){
#
# }
# else if(condi) {
#
# }
# else{
#
# }
#
#
#
# a=5
# b=2
# [[ a -eq b ]]

n=5
if [[ $n -gt 5 ]]; then
	#do something
	echo "$n gt 5"

elif [[ $n -lt 5 ]]; then
	echo "$n lt 5"
else
	echo "$n eq 5"
fi

echo "END of IF"

case $n in
	1) 
		echo  "1 matched"
		;;
	2)
		echo  "2 matched"
		;;
	*)
		echo  "* matched"
		;;
esac

