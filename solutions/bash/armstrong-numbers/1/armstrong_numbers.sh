#!/usr/bin/env bash

input=$1
count=${#input}
sum_of_nums=0

while (( input > 0 )); do
    remainder=$(( input % 10 ))
    sum_of_nums=$(( sum_of_nums + ( remainder ** count ) ))
    (( input /= 10 ))
done

if (( $1 == sum_of_nums )); then
    echo "true"
else
    echo "false"
fi