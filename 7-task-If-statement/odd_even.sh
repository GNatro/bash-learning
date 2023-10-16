#!/bin/bash



#if the number of letters in the argument is odd, outputs the message Odd, else if the number of letters is even - outputs Even


echo "Checking if the number of letters is Even or Odd"

sleep 2


ARGUMENT="${#1}"

if [[ $((ARGUMENT % 2)) -eq 1 ]]; then

	echo "The number of letters of the word $1 is Odd"
else

	echo "The number of letters of the word $1 is Even"

fi
