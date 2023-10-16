#!/bin/bash

#takes any number of arguments
#if there are less than 2 arguments, output the values of these arguments
#if there are more than 2 but less than 4 arguments, output only the last argument
#else output Invalid number of arguments message




if [ "$#" -lt 2 ]; then
# Less than 2 arguments: Output all arguments
 	echo "Arguments: $@"
elif [ "$#" -gt 2 ] && [ "$#" -lt 4 ]; then

# More than 2 but less than 4 arguments: Output the last argument

last_argument="${!#}"

	echo "Last Argument: $last_argument"
else

# More than 3 arguments: Output an error message
  	echo "Invalid number of arguments"
fi

