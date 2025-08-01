#!/usr/bin/env bash

declare -a items=(
    "eggs"
    "peanuts"
    "shellfish"
    "strawberries"
    "tomatoes"
    "chocolate"
    "pollen"
    "cats"
)
declare -A -i item_bit=(
    [eggs]=1
    [peanuts]=2
    [shellfish]=4
    [strawberries]=8
    [tomatoes]=16
    [chocolate]=32
    [pollen]=64
    [cats]=128
)

is_allergic_to() {
    local score="$1"
    local allergen="$2"
    local bit="${item_bit[$allergen]}"

    # Return true (0) if bit is set, false (1) otherwise
    (( (score & bit) != 0 ))
}

list_allergens() {
    local score=$1
    local result=()

    for item in "${items[@]}"; do
        if is_allergic_to "$score" "$item"; then
            result+=("$item")
        fi
    done

    # Output space-separated list
    local IFS=" "
    echo "${result[*]}"
}

score="${1:-0}"
allergen="$3"

# Scores above 255 are invalid (8 bits)
score=$((score % 256))

if [[ -n "$allergen" ]]; then
    $(is_allergic_to "$score" "$allergen") && echo "true" || echo "false"
else
    list_allergens "$score"
fi
