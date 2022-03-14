#!/bin/bash
while read line
do
	age=`echo $line | awk -F " " '{print $2}'`
	if [ $age -gt 29 ]
       	then
	echo "$line" | awk -F " " '{print $1}'
	fi
done
