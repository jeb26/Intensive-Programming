#!/bin/bash

path=$1

function reverse() {
	local lst=(`ls $path`)
	local size=${#lst[@]}

	for ((j=${size}-1; j>=0; j--))
	do
		echo ${lst[$j]}
	done
}

function main() {
	reverse
}

main
