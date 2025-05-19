#!/bin/bash

#iTwili8-Manas
#Date : 19 May

#This Script outputs the node health by showing disk, memory, CPU usage
#Version : v1

df -h        #Prints disk-sapce in human readable format (GB/MB etc)
free -g      #Prints memory usage in GB
nproc        #Prints number of CPU cores available


#Now the same commands where i manually input the details about the commands
#'echo' command - Prints label enclosed within ""
echo "Print Memory"
df -h
echo "Print CPU"
nproc
echo "Print Storage"
free -g


#Now same commands with the help of 'set' command
#'set' command - Runs commands with shell debug mode to trace execution
set -x       #means debug mode, shows each command before execution
df -h
nproc
free -g

#END
