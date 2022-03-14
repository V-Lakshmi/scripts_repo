


#!/bin/bash

echo "enter the filename to be reversed:"
read filename
lines=`cat $filename | wc -l`
while [ $lines -gt 0 ]
do
	head -$lines $filename | tail -1 >> temp
	lines=`expr $lines - 1`
done
cat temp
rm temp

