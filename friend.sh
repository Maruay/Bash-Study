#!/bin/bash

#This is a program that keeps your address book up to date

friends="friends.txt"

echo "Hello, "$USER". This script will register you in Maruay's friends database."

echo -n "Enter your name and press [ENTER]: "
read name
echo -n "Enter your gender [m,f] and press [ENTER]: "
read -n 1 gender
echo

grep -i "$name" "$friends"

if [ $? == 0 ]; then
echo "You are already registered, quitting."
exit 1
elif [ "$gender" == "f" ]; then
 echo "Maruay doesn't need female friends."
 exit 1
 else
 echo -n "How old are you?"
 read age
 if [ $age -lt 25 ]; then
 echo -n "Which color of hair do you have ? "
 read color
 echo "$name $age $color" >> "$friends"
 echo "You are added to Maruay's friends list. Thank you so much!"
 else
 echo "You are too old to be Maruay's friend."
 exit 1
 fi
 fi