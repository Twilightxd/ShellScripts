#!/bin/bash

#iTwili8-Manas
#Date : 19 May

#This script checks if a file ecists in a system


file="sample.txt"

if [ -f "$file" ]
then
	echo "$file exists!"
else
	echo "$file not found!"
fi

#END
