#!/bin/bash

while true; do
	read -p 'Enter a number: ' number

	digit=0
	newNum=0
	sumDigits=0

	while [ $number -gt 0 ]
	do
		digit=$(( $number % 10 ))
		sumDigits=$(( $digit + $sumDigits))
		newNum=`expr $newNum \* 10 + $digit` 
		number=$(( $number / 10 ))
	done

	echo "Reverse number is: $newNum"
	echo "Sum of digits is: $sumDigits"	
done

