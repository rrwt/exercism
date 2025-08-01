#!/usr/bin/env bash

input="$1"

if [ -z "$input" ]; then
    echo "One for you, one for me."
else
    echo "One for $input, one for me."
fi