#!/bin/bash

#function to compute the average file size of a directory
function average() {
	lst=()
	total=0
	path=$1

	#populate list with sizes
	for file in `ls $path`
	do
	lst=(${lst[@]} `du -sh $path/$file | grep -Eo '[0-9]{1,4}'`)
	done

	#sum the sizes
	for e in ${lst[@]}
	do
	total=$(($total + $e))
	done

	size=${#lst[@]}
	avg=$(($total / $size))

	echo $avg
}

function filter() {
	avg=`average $1`
	path=$1

	for file in `ls $path`
	do
		size=`du -sh $path/$file | grep -Eo '[0-9]{1,10}'`
		if [ $size -gt $avg ]; then
			echo $file
		else
			continue
		fi
	done
}

function main() {
	filter $1
}

main $1
