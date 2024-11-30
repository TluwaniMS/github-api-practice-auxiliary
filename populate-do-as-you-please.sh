#!/bin/bash

# Check if static-files directory exists, create it if it doesn't
if [ ! -d "static-files" ]; then
    mkdir static-files
    echo "Created directory: static-files"
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

# Create files in the static-files directory
for filename in "${files[@]}"; do
    filepath="static-files/$filename"
    if [ ! -f "$filepath" ]; then
        touch "$filepath"
        echo "Created file: $filepath"
    else
        echo "File already exists: $filepath"
    fi
done
