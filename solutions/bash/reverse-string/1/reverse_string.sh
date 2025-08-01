#!/usr/bin/env bash

main () {
  input="$1"
  reversed=$(echo "$input" | rev)
  echo "$reversed"
}

main "$@"