#!/bin/bash
echo "Enter the string: "
read str
strlen=$((${#str}))
for((i = $strlen - 1; i >= 0; i--))
    do
        echo -n ${str:$i:1}
    done
echo
for((i = $strlen - 1; i >= 0; i--))
    do
        element=${str:$i:1}
        ascii_value=$(printf "%d\n" \'$element)
        
        if [[ $ascii_value -eq 90 ]]
            then
                ascii_value=65
        elif [[ $ascii_value -eq 122 ]]
            then 
                ascii_value=97
        else
            ascii_value=$(($ascii_value+1))
        fi
        char="$(printf "\\$(printf "%o" "${ascii_value}")")"
        echo -n $char        
    done
echo
for((i = $strlen/2 - 1; i >= 0; i--))
    do
        echo -n ${str:$i:1}
    done
for((i=$strlen/2; i < $strlen; i++))
    do
        echo -n ${str:$i:1}
    done