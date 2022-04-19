#!/bin/bash
read datacsv
data=()
for i in ${datacsv//,/ }
do
    data+=($i)
done
n=${#data[@]}
for ((i = 0; i<n; i++))
do   
    for((j = 0; j<n-i-1; j++))
    do
    
        if [ ${data[j]} -gt ${data[$((j+1))]} ]
        then
            temp=${data[j]}
            data[$j]=${data[$((j+1))]}  
            data[$((j+1))]=$temp
        fi
    done
done
echo ${data[@]}