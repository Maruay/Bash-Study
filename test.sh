#!/bin/bash
echo "TEST"
echo "Welcome Khun ${@} to BASH experience."
echo "$(pwd)"
echo "Enter a value: "
read userInput
echo "You just entered ${userInput}"
echo "Is Maruay handsome ?" 
read ans
if [ ${ans} == 'Yes' ] 
then
echo "Maruay is a handsome guy."
elif [ ${ans} == 'No' ]
then
echo "Maruay is not a handsome guy."
else
echo "Please enter the answer."
fi
case $1 in
Maruay)
echo "Maruay is coming"
;;
Yuran)
echo "Yuran is coming"
;;
*)
echo "${1} is coming"
;;
esac

echo {$(echo 1,2,3)}{a,b}

words=(*)
echo There are files in this directory, ${words[@]}
echo ${#words[@]}

echo {a..z..2}

echo {a..c}{1..6..2}

#substring

subStr="TESTSUBSTRING"
echo ${subStr:6:2} #index

echo ${subStr:6}

fruits=(orange lemon apple melone banana)
echo ${fruits[@]:2:2}

#path
path="achive.tar.gz"
echo ${path##*.}

echo ${path#*.}

echo ${path%%.*}

echo ${path%*.*}

echo ${path/./:} # To replace the first of the longest matches of a pattern in a value by a string, the "/pattern/string" operator is used:

echo ${path//./:} # To replace all matches, the "//pattern/string" operator is used:

echo ${fruits[@]//a*/A}

echo ${fruits[@]^^n} # can be brought to upper case by the "^^character" operator:

echo ${fruits[@],,A} # or to lower case by the ",,character" operator:
