#!/bin/bash

var1=0

let "var1=5+5"
echo $var1

let var1=var1-5
echo $var1

let var1++
echo $var1

echo $( expr $var1 + 5 )

expr 10 + 10

var1=$( expr $var1 - 2 )
echo $var1

var2=5

let var2=var1+var2
echo $var2

var2=$((var2-var1))
echo $var2

var3=$((10*5)) # Unlike other methods, when we do multiplication we don't need to escape the * sign.
echo $var3