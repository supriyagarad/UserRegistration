#!/bin/bash 

NAME_PATTERN="^[A-Z]{1}[a-z]{2,}$"
EMAIL_PATTERN="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})*$"
MOBILE_NUMBER_PATTERN="^[+]{1}[1-9]{2}[ ][0-9]{10}$"
function validation()
{
	if [[ $1 =~ $2 ]]
	then
		echo "valid Pattern"
	else
		echo "Invalid Pattern"
	fi
}

#cheking first name is valid or not
read -p "enter First Name:" name
validation $name $NAME_PATTERN

#cheking last name is valid or not
read -p "enter last name: " lastName
validation $lastName $NAME_PATTERN

#checking mailid is valid or not 
read -p "enter email"  email
validation $email $EMAIL_PATTERN

#checking mobile pattern is valid or not
read -p "enter mobile number: " mobileNumber
validation $mobileNumber $MOBILE_NUMBER_PATTERN
