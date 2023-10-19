#!/bin/bash

#Goals:

#- learn to use until loop

#Tasks:
#- create a script that does the following:
#reads a filename from user input
#combines specifyed file with itself until it reaches a size greater than 1024 KB
#- create a file using head -c 4KB /dev/urandom > file.txt command

#- execute your script passing the file you've just created


echo "Write your filename"
read filename_input

#file_min=$(ls -l $filename_input | awk '{print $5})
while true; do

file_max=$(ls -l $filename_input | awk '{print $5}')
file_max1=$((file_max))
if [[ $file_max1 -gt 1048576 ]]; then
echo "The file is already the max $file_max"
exit 0
fi

until [[ $file_max -gt 1048576 ]]; do

file_max=$(ls -l $filename_input | awk '{print $5}')
file_max1=$((file_max))

if [[ $file_max1 -gt 1048576 ]]; then
echo "The script has been executed correctly"
exit 0

else
cp "$filename_input" "$filename_input.temp"
cat "$filename_input.temp" >> "$filename_input"
rm "$filename_input.temp"


#cat $filename_input | cat >> $filename_input

ls_output_b=$(ls -lh $filename_input | awk '{print $5}')


echo "Filesize: $ls_output_b"
sleep 1
fi

done
done



