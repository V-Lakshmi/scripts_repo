




#!/bin/bash

day=`date | cut -d " " -f1`
echo $day

case $day in 
	'Mon') ls -lrt > log1.txt
	       	cp --backup log1.txt /home/ec2-user/dir2/log1_backup.txt
		;;
	'Tue') cp log1_backup.txt /home/ec2-user/dir2/scripts/temp.txt
		;;
	'Wed') cp /home/ec2-user/dir2/scripts/temp.txt /home/ec2-user/dir2/Wed_temp.txt
			;;
	'Thu') mv /home/ec2-user/dir2/scripts/temp.txt /home/ec2-user/dir2/scripts/temp1.txt
         	;;
	'Fri') mv /home/ec2-user/dir2/Wed_temp.txt /home/ec2-user/dir2/scripts/Wed_temp1.txt 	
	'Sat'|'Sun')   	rm temp1.txt
			rm Wed_temp1.txt
		;;
	*) echo "invalid"
		;;
	esac	
