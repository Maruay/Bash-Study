#!/bin/bash

if [ -z $1 ] || [ -z $2 ] || [ -z $3 ]; then
echo "Please indicate 1st, 2nd and 3th arguments"
exit 1
fi 

test(){
	echo "echoTest"
}

test

function test2 {
	echo "echoTest2"
}

test2

# passing argument to function and return new value
testRet(){
	a=$( expr $1 + 5 )
	return $a
}

testRet $1
echo value of last function is $? # $? Remember that the variable $? contains the return status of the previously run command or function.

lines_in_file(){
	case $2 in
	"C")
	echo cat $1 | wc -m
	;;
	"L")
	echo cat $1 | wc -l
	;;
	"W")
	echo cat $1 | wc -w
	;;
	esac
	# wc <- Word Count [ -c bytes, -m characters, -l lines, -w words ]
}

num_lines=$( lines_in_file $2 $3 )

measure=""

case $3 in
"C")
measure="characters"
;;
"L")
measure="lines"
;;
"W")
measure="words"
;;
*)
measure=""
;;
esac

echo The file $2 has $num_lines $measure in it.