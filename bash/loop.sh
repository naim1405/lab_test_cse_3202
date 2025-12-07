#!/bin/bash

arr=(a b c d e f)
echo  ${arr[@]}
#
#
for x in {8..15}; do 
	echo "{} $x"
done

# # python
# # for x in arr:
# # 	print(x)
# #

for x in ${arr[@]}; do
	echo "$x"
done

#
for (( i=1; i<=7; i++)); do
	echo "Number $i"
done

i=1
while [[ i -lt 5 ]]; do
	echo "While Number $i"
	i=$((i + 1))
done

#
i=1
until [[ i -gt 5 ]]; do
	echo "Until Number $i"
	i=$((i + 1))
done
#
#
#
# for/while/until [[ ]]; do
# statements;
# done
