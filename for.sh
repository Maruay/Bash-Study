#!/bin/bash
# specific conversion script for extension x to y
LIST=(Maruay Max Sun Big Bun Sky)

# for in range of number
for rn in {1..5}; do
echo "This is no.${rn}"
done

# while loop
count=0
while [[ ${LIST[count]} == M* ]];  # check value starts with "M"
do
echo ${LIST[count]}
#count=$(( $count + 1 ))
let "count++"
done

# note : unset - deleting value in array or the whole array

# if [ -z "$1" ] || [ -z "$2" ]; then
# echo "Please fill both file's extension"
# else
# for file in *.$1; do
# NEWNAME="$(basename $file .$1).$2"
# cp $file $NEWNAME
# done
# fi