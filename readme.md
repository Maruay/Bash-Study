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