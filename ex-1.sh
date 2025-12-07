#!/bin/bash


read -p "Enter username: " username
read -s -p "Enter password: " password

#tasks:
# 1. read file
# 2. cehck each line
# 3. split
# 4. check username
# 5. check pass
# 6. show res
#
filename="userdata.txt"
is_user_found=0

while read -r -a line
do
	if [[ $username == ${line[0]} ]]; then
		is_user_found=1
		if [[ $password == ${line[1]} ]]; then
			echo "SUCCESS! you're logged in."
			break
		else
			echo "PASS ERR"
		fi
	fi

done < $filename
if [[ $is_user_found -eq 0 ]];then
	echo "NO USER FOUND"
fi


