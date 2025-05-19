#!/bin/bash

#iTwili8-Manas
#Date : 19 May

#This Script covers the if..else statements and a simple for loop
#Version : v1

a=4						#no space to be given while assigning variables
b=10
if [ $a -gt $b ]				#'$' indicates variable and '-gt' indicates numeric comparision
then
	echo "a is greater than b"		#'echo' similar to SOPln/printf...etc
else
	echo "b is greater than a"
fi


#for loop example
for i in loop{1..100}; do echo $i; done

#1st part = condition
#2nd part = action
#3rd part = completion or exit the loop

#Can be also done as:
for i in loop{1..100}
do
	echo "Loop iteration: $i"
done

#END
