#!/bin/bash

function first(){
	for i in 1 2 3 4 5
	do
		for j in $(seq 1 $i)
		do
			echo -n "$i "
		done
		echo
	done
}

function second(){
	for i in 1 2 3 4 5 6
	do
		for ((j=5;j>=$i;j--))
		do
			echo -n " "
		done
		for j in $(seq 1 $i)
		do
			echo -n "* "
		done
		echo
	done
	for i in 1 2 3 4 5 6
	do
		for ((j=1;j<$i;j++))
		do
			echo -n " "
		done
		for ((j=$i;j<=6;j++))
		do
			echo -n "* "
		done
		echo
	done
	
}

function third(){
	for ((i=1;i<=5;i++))
	do
		
		for ((j=1;j<$i;j++))
		do
			echo -n "| "
		done
		echo "|_"
	done
}

case $1 in
	"1")
		first
		;;
	"2")
		second
		;;
	"3")
		third
		;;	
esac

