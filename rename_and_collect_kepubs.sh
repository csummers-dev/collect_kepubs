#!/bin/bash

# Directory where the script is located
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Directory to search (default: current directory)
TARGET_DIR="${1:-.}"

# Find all .kepub files in target directory and subdirectories
find "$TARGET_DIR" -type f -name "*.kepub" | while read -r file; do
    # Extract base filename
    base="$(basename "$file")"

    # Create new filename with .epub appended
    newname="${base}.epub"

    # Full path for the renamed file in the script directory
    dest="$SCRIPT_DIR/$newname"

    # Move + rename
    mv "$file" "$dest"

    echo "Moved & renamed: $file  →  $dest"
done
