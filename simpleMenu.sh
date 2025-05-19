#!/bin/bash

#iTwili8-Manas
#Date : 19 May

#This script creates a bash menu with user choices


echo "Choose an option: "
echo "1. Show Date"
echo "2. List Files"
echo "3. Exit"

read -p "Enter choice: " choice

case $choice in
	1) date ;;
	2) ls -lh ;;
	3) exit ;;
	*) echo "Invalid Choice!" ;;
esac


#END
