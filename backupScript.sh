#!/bin/bash

#Manas
#Date : 19 May

#This script backs up a folder to a backup directory


src="/home/iTwili8/Documents"			#Provide the path for the directory you want to backup
dest="/home/iTwili8/Backup"			  #Provide the backup folder(directory) path

mkdir -p "$dest"
cp -r "$src" "$dest"

echo "Backup Complete"


#END
