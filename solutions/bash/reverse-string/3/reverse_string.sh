#!/usr/bin/env bash

input="$1"
result=""

for (( i=0; i < "${#input}"; i++)); do
  result="${input:$i:1}${result}"
done

echo "${result}"