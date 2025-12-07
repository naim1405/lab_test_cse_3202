#!/bin/bash

var="HELLO WORLD!"

echo $var
#inpt =  input("asfsadf")
read -p "ENTER city " user_city

#
cur_directory=$(pwd)
#
user=$(whoami)
echo "Hello $user, from $user_city"
echo "You are currently in: $cur_directory"
#
num=5
result=$(( $num * $num ))
echo  "arithmetic result : $result"

str_res="123${num}123"

echo "result $str_res"
echo "len str ${#str_res}"
echo "sub str ${str_res:2:3}"
echo "str replace ${str_res/351/0101010}"
#
#
# # input
# # read -p "prompt" var_name
# # output
# # echo "hiasdf"/ $var
# # arithmetic operation
# # $(( ))
# # inline commands
# # $( cmd )
# # string, length, substring, replace
# # echo "len str ${#str_res}"
# # echo "sub str ${str_res:2:2}"
# # echo "str replace ${str_res/351/0101010}"
