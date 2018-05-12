#!/bin/bash
# specific conversion script for extension x to y

LIST="$(ls *.$1)"
for i in "$LIST"; do
echo "$(basename "$i" .$1).$2"
# echo "$(basename "$i" .$1).$2"
# echo "${i/%.$1/.$2}"
#NEWNAME=$(ls "$i" | sed -e 's/txt/php/")
#cat beginfile > "$NEWNAME"
#cat "$i" | sed -e '1,23d' | tac | sed -e '1,21d'| tac >> "$NEWNAME"
#cat endfile >> "$NEWNAME"
done