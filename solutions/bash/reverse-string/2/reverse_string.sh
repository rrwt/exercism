#!/usr/bin/env bash

main () {
  input="$1"
  echo "$input" | rev
}

main "$@"