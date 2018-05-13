#!/bin/bash

# test - pyramid.sh [level]

level=$1
current=1

if [ -z $1 ]; then
	echo "Please indicate first value"
else

	# iterate level
	while [ $current -le $level ]; do
	space=$(( $level-$current ))
	txt=0 # txt=""

	# iterate space
	i=0
	while [ $i -le $((space-1)) ]; do
	txt+=0 
	let "i++"
	done

	# iterate text
	j=0
	txtVal=""
	while [ $j -le $((current-1)) ]; do
	
	# mode 10 in case value >= 10
	txtshow=""
	if [ $((j+1)) -ge 10 ]; then txtshow=$(((j+1) % 10)); else txtshow=$((j+1)); fi

	# text in each number of level
	if [ $j == 0 ]; then txtVal=1; else txtVal=${txtshow}${txtVal}${txtshow}; fi

	let "j++"
	done

	# echo final text each level
	echo ${txt}${txtVal}${txt}
	let "current++"
	done

fi