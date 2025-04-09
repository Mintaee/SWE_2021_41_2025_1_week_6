#!/bin/bash


for filepath in files/*; do
    filename=$(basename "$filepath")

    first_char=$(echo "${filename:0:1}" | tr 'A-Z' 'a-z')

    if [[ -d "$first_char" ]]; then
        mv "$filepath" "$first_char"/
    fi
done