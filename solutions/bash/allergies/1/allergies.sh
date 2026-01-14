#!/usr/bin/env bash

input="$1"
eggs=1
peanuts=2
shellfish=4
strawberries=8
tomatoes=16
chocolate=32
pollen=64
cats=128
output=""

input=$((input % 256))

if (( (input & cats) != 0 )); then
    output="cats"
fi
if (( (input & pollen) != 0 )); then
    if [ -n "$output" ]; then
        output="pollen $output"
    else
        output="pollen"
    fi
fi
if (( (input & chocolate) != 0 )); then
    if [ -n "$output" ]; then
        output="chocolate $output"
    else
        output="chocolate"
    fi
fi
if (( (input & tomatoes) != 0 )); then
    if [ -n "$output" ]; then
        output="tomatoes $output"
    else
        output="tomatoes"
    fi
fi
if (( (input & strawberries) != 0 )); then
    if [ -n "$output" ]; then
        output="strawberries $output"
    else
        output="strawberries"
    fi
fi
if (( (input & shellfish) != 0 )); then
    if [ -n "$output" ]; then
        output="shellfish $output"
    else
        output="shellfish"
    fi
fi
if (( (input & peanuts) != 0 )); then
    if [ -n "$output" ]; then
        output="peanuts $output"
    else
        output="peanuts"
    fi
fi
if (( (input & eggs) != 0 )); then
    if [ -n "$output" ]; then
        output="eggs $output"
    else
        output="eggs"
    fi
fi

if [ -n "$3" ]; then
    if [[ $output == *"$3"* ]]; then
        output="true"
    else
        output="false"
    fi
fi

echo "$output"