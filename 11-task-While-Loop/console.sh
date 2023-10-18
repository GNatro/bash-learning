#!/bin/bash


#Goals:

#- learn to use while loop

#Tasks:

#- create console.sh script that does the following:

#implements console functionality - infinite loop that reads user input on each iteration
#supports commands:
#ls [dir] - lists the contents of specified directory
#pwd - shows the path to current directory
#hi - outputs Hello <name of the current user> 
#exit - ends the script




 while true; do
	echo "Please enter something:"
	read user_input
	if [[ $user_input == "ls" ]]; then
	echo "Enter the directory path to see the content"
	read user_ls_path
	ls -ltr "$user_ls_path"
	elif [[ $user_input == "pwd" ]]; then
	pwd
	elif [[ $user_input == "hi" ]]; then
	echo "Hello $USER"
	elif [[ $user_input == "exit" ]]; then
	echo "Exiting from script"
	exit 0
	else 
	echo "You don't input anything or the correct command"
	exit 0
	fi

 done
