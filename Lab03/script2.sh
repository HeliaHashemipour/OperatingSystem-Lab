#!/bin/bash

flag=0
function checkInput(){
if [ -z $1 ]; then
	echo "First number is empty"
	flag=1
elif ! [[ $1 =~ ^[+-]?[0-9]+$ ]]; then
	echo "First number is not valid"
	flag=1
fi
if [ -z $3 ]; then
	echo "Second number is empty"
	flag=1
elif  ! [[ $3 =~ ^[+-]?[0-9]+$ ]]; then
	echo "Second number is not valid"
	flag=1
fi
}

checkInput $1 $2 $3
if [ $flag -eq 0 ]; then
	case $2 in
	"+")
		expr $1 + $3
		;;
	"-")
		expr $1 - $3
		;;
	"x")
		expr $1 \* $3
		;;
	"/")
		expr $1 / $3
		;;
	*)
		echo "invalid input"
		;;
	esac
fi
