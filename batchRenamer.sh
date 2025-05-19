#!/bin/bash

#Manas
#Date : 19 May

#This script renames a file in bulk


i=1
for file in *.jpg
do
	mv "$file" "image_$i.jpg"
	((i++))
done
echo "Files renamed"


#END

