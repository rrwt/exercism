#!/usr/bin/env bash

num=$2
sum_of_sq=0
sum=$(( num * (num + 1) / 2 ))
sum_of_sq=$(( sum * (2 * num +1) / 3 ))
square_of_sum=$(( sum * sum ))

if [[ "$1" == "difference" ]]; then
    difference=$(( square_of_sum - sum_of_sq ))
    echo "$difference"
elif [[ "$1" == "sum_of_squares" ]]; then
    echo "$sum_of_sq"
else
    echo "$square_of_sum"
fi