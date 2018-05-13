#!/bin/bash
# specific conversion script for extension x to y

#LIST="$(ls *.$1)"
if [ -z "$1" ] || [ -z "$2" ]; then
echo "Please fill both file's extension"
else
for file in *.$1; do
NEWNAME="$(basename $file .$1).$2"
cp $file $NEWNAME
# echo "$(basename "$i" .$1).$2"
# echo "${i/%.$1/.$2}"
#NEWNAME=$(ls "$i" | sed -e 's/txt/php/")
#cat beginfile > "$NEWNAME"
#cat "$i" | sed -e '1,23d' | tac | sed -e '1,21d'| tac >> "$NEWNAME"
#cat endfile >> "$NEWNAME"
done
fi