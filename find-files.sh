#!/bin/bash

ZIP_URL="https://assets.01-edu.org/devops-branch/find-files-example.zip"

ZIP_FILE=$(basename "$ZIP_URL")
EXTRACT_DIR="extracted_data"

curl -sL -O "$ZIP_URL"

mkdir -p "$EXTRACT_DIR"
unzip -q "$ZIP_FILE" -d "$EXTRACT_DIR"

find "$EXTRACT_DIR" -type d

# 4. Clean up the downloaded zip file
rm "$ZIP_FILE"
