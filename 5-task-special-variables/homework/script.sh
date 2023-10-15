#!/bin/bash


#prints the name of the script:
echo "Name of the running script:$0"

echo "###############################################"
#prints all arguments:
echo "Prints all arguments: $*"

echo "################################################"

#prints the number of arguments passed to the script

echo "prints the number of arguments passed to the script: $#" 

echo "###############################################"

echo "print 2nd and 4th argument: 2nd = $2 4th = $4 "

echo "################################################"

[[ $1 -eq $2 ]]
EXIT_CODE=$?

echo "print the exit code of -eq operation on 1st and 2nd arguments(use[[]]): The answer is : $EXIT_CODE"

