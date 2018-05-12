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