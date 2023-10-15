#!/bin/bash

#checks if 1st and 2nd string arguments are equal and outputs the exit code of this operation

echo "Checking if 1st and 2nd string arguments are equal"

if [[ $1 == $2 ]]; then
EXIT_CODE=$?
	echo "The string is equal and the exit code is:$EXIT_CODE"
else
EXIT_CODE=$? 
	echo "The string is not equal and the exit code is:$EXIT_CODE" 
fi


echo "#####################################################"

#checks if 1st string argument is longer than 2nd string argument or equal and outputs the exit code of this operation

echo "Checking if 1st string argument is longer than 2nd string argument or equal"

if [[ ${#1} -eq ${#2} ]]; then
EXIT_CODE=$?
	echo "The string length for $1 and $2 is equal and the exit code is: $EXIT_CODE"
elif [[ ${#1} -gt ${#2} ]]; then
EXIT_CODE=$? 
	echo "The first string $1 is longer then the second $2 and the exit code is: $EXIT_CODE"
else
EXIT_CODE=$?
	echo "The second string $2 is longer then the first $1 and the exit code is: $EXIT_CODE"
fi


echo "######################################################"

#checks if variable TEST is present in the environment (has non-zero length) and outputs the exit code of this operation

#Declaring variable
TEST="123"

if [[ -n "$TEST" ]]; then
EXIT_CODE=$?
	echo "The Variable TEST has non-zero length. The exit code is: $EXIT_CODE"
else
EXIT_CODE=$?
	echo "The variable TEST is empty. The exit code is: $EXIT_CODE"
fi
echo "#######################################################"


#checks if 3rd and 4th integer arguments are not equal and outputs the exit code of this operation

echo "Checking if the 3rd and 4th integer arguments are not equal"

if [[ $3 != $4 ]]; then

EXIT_CODE=$?
	echo "The integer argument $3 is not equal to $4. The exit code is: $EXIT_CODE"
else

EXIT_CODE=$?
	echo "The integer argument $3 is equal to $4. The exit code is: $EXIT_CODE"

fi

echo "#######################################################"

#checks if 3rd integer argument is greater or equal to 4th integer argument and outputs the exit code of this operation

if [[ $3 -ge $4 ]]; then
EXIT_CODE=$?

	echo "The integer argument $3 is greater or equal to $4. The exit code is: $EXIT_CODE"
else
EXIT_CODE=$?
	echo "The integer argument $3 is not greater or equal to $4. The exit code is: $EXIT_CODE"
fi




















