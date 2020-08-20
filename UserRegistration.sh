#!/bin/bash
shopt -s extglob
 
#constant
NAME_PATTERN="^[A-Z]{1}[a-zA-Z]{2,}$"
EMAIL_PATTERN="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})*$"
MOBILE_NUMBER_PATTERN="^[+]{1}[0-9]{2}[ ][0-9]{10}$"

PASSWORD_MINIMUM_EIGHT_CHARACTER="^[A-Za-z]{8,}$"
PASSWORD_CONTAIN_AT_LIST_ONE_UPPERCASE_CHARACTER="^[A-Za-z]{8,}$"
PASSWORD_CONTAIN_AT_LIST_ONE_DIGIT="^[0-9A-Za-z]{8,}$"
PASSWORD_PATTERN="^[A-Z]{1,}[a-z]{4,}[*&^%$#@!+=]{1}[0-9]{1,}$"
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

#checking password length
read -p "enter eight character password:" password
validation $password $PASSWORD_MINIMUM_EIGHT_CHARACTER

#checking password contain one Uppercase letter
read -p "enter password contain one Uppercase letter:" password
validation $password $PASSWORD_CONTAIN_AT_LIST_ONE_UPPERCASE_CHARACTER

#checking password contain one Numberic Number
read -p "enter password contain one Numeric number:" password
validation $password $PASSWORD_CONTAIN_AT_LIST_ONE_DIGIT

#checking password 
read -p "enter password:" password
validation $password $PASSWORD_PATTERN


