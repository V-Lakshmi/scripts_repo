#!/bin/bash

### Input password as hidden charactors ### 
read -s -p "Enter Password: "  pswd    #Use -s for silent mode. Using -s input characters are not echoed

### Print the value of pswd variable ### 
echo -e "\nYour password is: " $pswd
