#!/bin/bash

flag=0
function checkInput(){
if [ -z $1 ]; then
	echo "First input is empty"
	flag=1
elif ! [[ $1 =~ ^[+-]?[0-9]+$ ]]; then
	echo "First input is not valid"
	flag=1
fi
if [ -z $2 ]; then
	echo "Second input is empty"
	flag=1
elif  ! [[ $2 =~ ^[+-]?[0-9]+$ ]]; then
	echo "Second input is not valid"
	flag=1
fi
}

checkInput $1 $2
if [ $flag -eq 0 ]; then
	echo "=>Sum:"
	expr $1 + $2

	echo "=>Comparison:"
	if [ $1 -gt $2 ]
	then
		echo $1
	elif [ $1 -lt $2 ]
	then
		echo $2
	elif [ $1 -eq $2 ]
	then
		echo "equal"
	fi
fi

