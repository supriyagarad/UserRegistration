#!/bin/bash 

NAME_PATTERN="^[A-Z]{1}[a-z]{2,}$"

function validation()
{
	if [[ $1 =~ $2 ]]
	then
		echo "valid Name"
	else
		echo "Invalid Name"
	fi
}

read -p "enter First Name:" name
validation $name $NAME_PATTERN

read -p "enter last name: " lastName
validation $lastName $NAME_PATTERN
