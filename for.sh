#!/bin/bash
# specific conversion script for extension x to y
#LIST=("Maruay" "Max" "Sun" "Big" "Bun" "Sky")

#LIST=$(<friends.txt)
IFS=$'\r\n' GLOBIGNORE='*' command eval  'LIST=($(cat friends.txt))'

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

select choice in ${LIST[@]}; do  # ${LIST[@]} & ${List[*]} are work well
	echo $REPLY : ${choice}
	break
done

if [ -f test.sh ]; then echo "test.sh exists"; else echo "test.sh doesn't exist"; fi

count=1
until [ $count -gt 5 ]
do
printf "Count has a value of ${count}\n"
((count++))
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