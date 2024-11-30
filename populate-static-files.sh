#!/bin/bash

# Check if do-as-you-please directory exists, create it if it doesn't
if [ ! -d "do-as-you-please" ]; then
    mkdir do-as-you-please
    echo "Created directory: do-as-you-please"
fi

# Array of filenames
files=(
    "marvel-app-dev.yml"
    "marvel-app-uat.yml"
    "marvel-app-prod.yml"
    "dc-app-dev.yml"
    "dc-app-uat.yml"
    "dc-app-prod.yml"
    "majuba-app-dev.yml"
    "majuba-app-uat.yml"
    "majuba-app-prod.yml"
    "doring-app-dev.yml"
    "doring-app-uat.yml"
    "doring-app-prod.yml"
)

# Create files in the do-as-you-please directory
for filename in "${files[@]}"; do
    filepath="do-as-you-please/$filename"
    if [ ! -f "$filepath" ]; then
        touch "$filepath"
        echo "Created file: $filepath"
    else
        echo "File already exists: $filepath"
    fi
done
