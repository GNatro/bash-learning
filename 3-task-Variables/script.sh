#!/bin/bash

NAME="George_Natroshvili"
echo "Getting variables from vars.sh file"
source vars.sh
sleep 2
echo "Making directory"
mkdir $NAME
sleep 2 
echo "Creating files with touch command"
touch $NAME/$FILE
sleep 2
echo "Displaying current dirrectory" 
ls -ltr
sleep 2
echo "#######################################"
echo "Displaying the created directory" 
ls -ltr $NAME
