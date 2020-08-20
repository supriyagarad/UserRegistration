#!/bin/bash 

NAME_PATTERN="^[A-Z]{1}[a-z]{2,}$"

function validation()
{
	if [[ $1 =~ $2 ]]
	then
		echo "valid First Name"
	else
		echo "Invalid First Name"
	fi
}

read -p "enter First Name:" name
validation $name $NAME_PATTERN
