#!/bin/bash

filename="todo.txt"

#
# done
#
action=$1
item=$2

display_list(){
	while read -r line
	do
		echo $line
	done < $filename

}

display_search(){
	query=$1
	grep -e "$query" < $filename
}

mark_done(){
	line=$1
	sed -i "${line}s/[ ]/x/" $filename

}

case "$action" in
	"add")
		mod_item="[ ] $item"
		echo $mod_item >> $filename
		;;
	"list")
		display_list
		;;
	"done")
		echo "ACTION DONE"
		(mark_done $item)
		;;
	"clear")
		echo  "" > $filename
		;;
	"search")
		(display_search $item)
		;;
esac
