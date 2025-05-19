#!/bin/bash

#iTwili8-Manas
#Date : 19 May

#This Script outputs the node health
#Version : v1

df -h
free -g
nproc


#Now the same commands where i manually input the details about the commands
echo "Print Memory"
df -h
echo "Print CPU"
nproc
echo "Print Storage"
free -g


#Now same commands with the help of 'set' command
set -x  #means debug mode
df -h
nproc
free -g

#END
