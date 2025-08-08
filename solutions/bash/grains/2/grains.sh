#!/usr/bin/env bash

square=$1

if [[ "$square" == "total" ]]; then
    res=$(( 2 ** 64 - 1 ))
    printf '%u\n' "$res"
elif [[ "$square" =~ ^[0-9]+$ ]] && (( square > 0 && square < 65 )); then
    res=$(( 2 ** (square - 1) ))
    printf '%u\n' "$res"
else
    echo "Error: invalid input"
    exit 1
fi