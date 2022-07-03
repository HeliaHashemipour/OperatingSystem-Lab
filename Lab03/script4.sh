#!/bin/bash

read -p 'Enter X: ' x
read -p 'Enter Y: ' y
read -p 'Enter file name: ' fileName

fileAddress="./"
fileAddress+="$fileName"
counter=1

while IFS= read -r line; do
	if ([ $counter -gt $x ] || [ $counter -eq $x ]) && [ $counter -le $y ] ; then
		echo "$line"
	fi
	((++counter))
done < "$fileAddress"

