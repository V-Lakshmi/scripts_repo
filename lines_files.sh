




#!/bin/bash
echo "enter the name: "
read name
#[ $# -eq " " ] && exit 1
if [ -f $name ]; then 
	
	 echo "number of lines in $name file is $(wc -l $name)"

	   elif [ -d $name ]; then
		   
		   echo "number of files in $name directory: $(find "$name" -type f | wc -l)"
	
	   else 
			       echo "$name doesnot exists"
		fi
				 
