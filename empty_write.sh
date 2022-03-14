


#!/bin/bash
echo "enter file name: "
read name
[ $# -eq 0 ] && exit 1
if [ -f $name ]; then 
	if [ -s $name ]; then

		echo "$name file exists and not empty"
	elif [ -w $name ]; then
		echo "$name file exists and empty with write permission"
		echo "write file (y/n): "
		read value
		if [ $value == "y" ]; then
			sudo vi $name
		else
			exit
		fi
	fi
elif [ -d $name ]; then
       echo "$name is a directory"
      else       
	echo "file doesnot exists"
fi
