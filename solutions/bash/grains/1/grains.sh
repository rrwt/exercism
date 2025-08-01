#!/usr/bin/env bash

square=$1
max_val=9223372036854775808
total=18446744073709551615

if [[ "$square" == "total" ]]; then
    echo "$total"
elif [[ "$square" =~ ^[0-9]+$ ]] && (( square > 0 && square < 65 )); then
    if (( square == 64)); then
        echo "$max_val"
    else
        res=$(( 2 ** (square - 1) ))
        echo "$res"
    fi
else
    echo "Error: invalid input"
    exit 1
fi