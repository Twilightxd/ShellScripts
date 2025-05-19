#!/bin/bash

#Manas
#Date : 19 May

#This script shows a simple execuatble calculator performing basic arithmetic operations


#Taking inputs
read -p "Enter first number: " a
read -p "Enter seconf number: " b

#Operations
echo "Addition: $((a + b))"
echo "Subtraction: $((a - b))"
echo "Multiplication: $((a * b))"
echo "Division: $((a / b))"


#END
