#!/bin/bash

#create a directory tree of breadth b and deapth d


open=($1)
b=$2
d=$3

for ((i=0;i < d; i++)); do
	new_open=( )

	for x in ${open[@]}; do
		tmp=( )

		for((j=1; j<= b; j++)); do
			dd=$x/$j
			echo mkdir -p $dd
			tmp=(${tmp[@]} $dd)
		done
	new_open=(${new_open[@]} ${tmp[@]})
	closed=(${closed[@]} $x)
	done
	open=${new_open[@]}
done

