#!/bin/bash

# Get the directory where the script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Define paths relative to the script location
SOURCE_DIR="$SCRIPT_DIR/../assets"
OUTPUT_DIR="$SCRIPT_DIR/../patches"

# Create the target directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Loop through files in the assets directory
# The 'nullglob' ensures it doesn't try to loop if assets is empty
shopt -s nullglob
for file in "$SOURCE_DIR"/*.png; do
    # Extract filename from path
    filename=$(basename "$file")
    base="${filename%.png}"

    # Capitalize the first letter (PascalCase)
    name="$(tr '[:lower:]' '[:upper:]' <<< ${base:0:1})${base:1}"

    # Define the output path
    target="$OUTPUT_DIR/${name}Icon.blp"

    echo "Converting $filename to $target..."

    # Run the converter (ensure BLPConverter.exe is in the same folder as the script)
    wine "$SCRIPT_DIR/BLPConverter.exe" "$file" "$target"

    # Remove original PNG
    echo "Removing original $filename..."
    rm "$file"
done

echo "Done! All files converted and processed."
