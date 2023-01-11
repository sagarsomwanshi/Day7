#!/bin/bash -x

randomArray=()
for((i=0;i<10;i++))
do
        randomArray[i]=$(( $((RANDOM%899)) +100 ))
done

echo ${randomArray[@]}



randomArray=($(echo ${randomArray[*]}| tr " " "\n" | sort -n))
echo "Sorted array : ${randomArray[@]}"

echo "Second largest element of Array is ${randomArray[-2]}"
echo "Second smallest element of Array is ${randomArray[1]}"
