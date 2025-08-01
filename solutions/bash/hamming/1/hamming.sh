#!/usr/bin/env bash


if (( $# != 2 )); then
    echo "Usage: hamming.sh <string1> <string2>"
    exit 1
fi

first="$1"
second="$2"

if (( ${#first} != ${#second} )); then
    echo "strands must be of equal length"
    exit 1
fi

count=0

for (( i = ${#first} - 1; i >= 0; i-- )); do
    if [[ "${first:i:1}" != "${second:i:1}" ]]; then
        count=$(( count + 1 ))
    fi
done

echo "$count"