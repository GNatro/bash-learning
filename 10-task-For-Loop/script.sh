#!/bin/bash

sum=0
count=0

for arg in "$@"; do
 sum=$((sum + arg))
 count=$((count + 1))
done

average=$(bc <<< "scale=2; $sum / $count")

#Output the result

echo "Sum: $sum"
echo "Args number: $count"
echo "Result: $average"
