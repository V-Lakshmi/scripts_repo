







#!/bin/bash
        var="$(grep -i -R 'linux' /home/ec2-user/dir2/scripts)"
	if [ ! -z "$var" ]; then
	echo "list of files with word linux/Linux: $var"
        else 
		echo "linux/Linux word not found in any file"
			fi

	

