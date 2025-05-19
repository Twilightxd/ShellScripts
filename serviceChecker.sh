#!/bin/bash

#Manas
#Date : 19 May

#This script checks if a service is running (like ssh or apache2)


service="ssh"

if systemctl is-active --quiet "$service"
then
	echo "$service is running!"
else
	echo "$service is not running!"
fi


#END

