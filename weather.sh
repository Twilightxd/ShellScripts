#!/bin/bash

read -p "Enter the city name: " city
curl wttr.in/$city
