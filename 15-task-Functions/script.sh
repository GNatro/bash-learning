#!/bin/bash


#Goals:

#- learn to use functions

#- learn to use nested functions

#Tasks:

#- create a script that does the following:

#has a function that multiplies the argument passed to it by itself
#has a second function that passes each argument passed to the script to the first function and increases the result by 1 and outputs to the console
#- run your function with the following arguments: 5 6 1 3 9


# Define the first function to square the input
square() {
    local result=$(( $1 * $1 ))
    echo $result
}

# Define the second function to process the arguments
process_arguments() {
    for arg in "$@"; do
        result=$(square $arg)  # Call the square function and capture the result
        echo "Result multiplied by itself : $result"

	result=$((result + 1))
        echo "Result incresed by 1 : $result"
    done
}

# Call the second function with the given arguments
process_arguments $1 $2 $3 $4 $5 $6 $7
