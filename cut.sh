#!/bin/bash

no=4
cut1=$(cut -f $no dataCut.txt)
echo $cut1

cut2=$(cut -f 2-4 dataCut.txt)
echo $cut2

cut3=$(cut -f -3 dataCut.txt)
echo $cut3

cut4=$(cut -c 3-10 dataCut.txt)
echo $cut4
