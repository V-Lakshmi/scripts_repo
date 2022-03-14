





#!/bin/bash
echo "Enter two integers: "
read a b
[ $# -ne 2 ] && exit 1
#perform addition
result=`expr $a + $b`
echo "addition: $result"

#perform subtraction
if [ $b -gt $a ];then
	result=`expr $b - $a`
else
	result=`expr $a - $b`
	fi
echo "subtraction: $result"

#perform multiplication
result=`expr $a \* $b`
echo "multiplication: $result"

#perform division
if [ $b -gt $a ];then
        result=`expr $b / $a`
else
	        result=`expr $a / $b`
		        fi
			echo "division: $result"
