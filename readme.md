Not old to learn

test.sh
- echo
- read
- if statement
- case statement

friend.sh
- if statement
- append to file

for.sh
- for statement
- selete statement
- changing file's extension
- [[ -n string ]] - string is non-empty
- [[ -z string ]] - string is empty

- [[ -e file ]] - file exists
- [[ -f file ]] - file is a regular file

- [[ -d file ]] - file is a directory

- [[ -t file ]] - fd is open and refers to a terminal

- LIST=$(<friends.txt) - read line from friends.txt to LIST variable

pyramid.sh
- while statement
- let statement
- if statement in one line
- replace ex. ${val//-/- /} [replace "-" with "- "]

<pre><code>df # Displays the amount of disk space available
-h # human readable format (K, M, G)
-T # print file system type

cut # Remove or "cut out" sections of each line of a file or files.
-c # characters
Ex. 	cut -c 3-12 data.txt -> e two thre
-f # fields
Ex. 	cut -f 3 data.txt -> tree
	cut -f 2-3 data.txt -> two three four
	cut -f 1-2,4-5 data.txt -> one two four five
	cut -f 3- data.txt -> three four five
	cut -f -3 data.txt -> one two three
let # is a builtin function of Bash that allows us to do simple arithmetic.
Ex.	let a=5+4 # 9
	let "a = 5 + 4" # 9
	let a++ # 10
	let "a = 4 * 5" # 20
expr # is similar to let except instead of saving the result to a variable it instead prints the answer. Unlike let you don't need to enclose the expression in quotes. You also must have spaces between the items of the expression.
Ex.	expr 5 + 4 # 9
	expr "5 + 4" # 5 + 4
	expr 5+4 # 5+4
	expr 5 \* 12 # 60 -> Some characters have a special meaning to Bash so we must escape them (put a backslash in front of) to remove their special meaning.
	a=$( expr 10 - 3 ) # 7
Double Parentheses # In the section on Variables we saw that we could save the output of a command easily to a variable. It turns out that this mechanism is also able to do basic arithmetic for us if we tweak the syntax a little.
Ex.	a=$(( 4 + 5 )) # 9
	a=$((3+5)) # 8
	b=$(( a + 3 )) # a and $a are work
	a=$(( 4 * 5 )) # doing multiplication doesn't need to escape *
Length of a Variable # This isn't really arithmetic but it can be quite useful. If you want to find out the lengh of a variable (how many characters) 
you can do the following: ${#variable}
Ex.	a='Hello World' echo ${#a} # 11</code></pre>

>Note
><pre><code>$ IFS=$'\r\n' GLOBIGNORE='*' command eval  'XYZ=($(cat /etc/passwd))'
>$ echo "${XYZ[5]}"
>sync:x:5:0:sync:/sbin:/bin/sync</pre></code>
>CR: https://stackoverflow.com/questions/11393817/read-lines-from-a-file-into-a-bash-array


CR: http://www.tldp.org/LDP/Bash-Beginners-Guide/html/sect_08_02.html
https://stackoverflow.com/questions/1224766/how-do-i-rename-the-extension-for-a-batch-of-files
https://www.cyberciti.biz/faq/bash-for-loop/
http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_10_02.html
http://tldp.org/LDP/abs/html/comparison-ops.html
https://www.youtube.com/watch?v=uqHjc7hlqd0&t=1602s
https://www.computerhope.com/unix.htm
https://ryanstutorials.net/bash-scripting-tutorial/bash-arithmetic.php

# Command Groups

<b>Subshell:</b>

Evaluate list of commands in a subshell, meaning that its
environment is distinct from the current shell and its
parameters are contained.
<pre><code>(list)</code></pre>

<b>Group command:</b>

Evaluate list of commands in the current shell, sharing
the current shell's environment.
<pre><code>{list;}</code></pre>