#!/bin/bash

#Manas
#Date : 19 May

#This script helps in backing up your directory


src="/home/iTwili8/Documents"			#provide the path for the directory you want to backup
dest="/home/iTwili8/Backup"			#provide the backup folder(directory) path

mkdir -p "$dest"
cp -r "$src" "$dest"

echo "Backup Complete"


#END
