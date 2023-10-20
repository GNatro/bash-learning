
#!/bin/bash


#Goals:

#- learn to use positional arguments

#Tasks:

#- create a script that does the following:

#accepts any number of arguments
#prints all arguments in the following format Arg1: <arg1 value>, Arg2: <arg2 value>"
#adds the value of the next argument to the previous one and prints it out (for the last argument add the value of the first one)
#- run the script with 7 1 5 7 4 3 6 arguments



#Checks if at least one argument is provided

if [ $# -eq 0 ]; then
	echo "No arguments provided"
	exit 1
fi


total_args=$#
sum=0
var_count=2 
for ((i = 1; i <= total_args; i++)); do 
var_count=$((var_count + 1))


#Checks and outputs the last argument
 if [[ $i -eq $total_args ]]; then
	current_arg="${!i}"
	last_arg_sum=$((current_arg + $1))
	echo "Arg$i = $last_arg_sum" 

 elif [[ $i -eq 1 ]]; then
	current_arg="${!i}"
        current_ar_int=$((current_arg))
	sum=$(($2 + current_ar_int))
	echo "Arg$i = $sum"
#Executes the script for the other arguments 
 else

	current_arg="${!i}"
	current_ar_int=$((current_arg))
	var_count1=$((var_count - 1))
	command_string="\$$var_count1"
	result_command=$(eval echo "$command_string")
	sum=$((result_command + current_ar_int))

	echo "Arg$i = $sum"
 fi

done
