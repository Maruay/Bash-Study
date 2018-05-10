#!/bin/bash
echo "TEST"
echo "Welcome Khun ${@} to BASH experience."
echo "$(pwd)"
echo "Enter a value: "
read userInput
echo "You just entered ${userInput}"
read -p "Run command $foo? [yn]" answer
#echo "${answer}"