#!/bin/bash

#take inputs from user
echo "enter your name"
read name 
echo "enter your location"
read location

#generating random password

echo "Do u want to generate random password:yes or No"
read option
if [ $option == "yes" ]
then
echo "generating password....."
passwd1=$(date +%s)$RANDOM

echo $name password is $passwd1 >> password
echo "your password is generated and stored in password file"
else
echo "You have selected not to generate password"
fi

echo $name >>output
echo $location >>output
