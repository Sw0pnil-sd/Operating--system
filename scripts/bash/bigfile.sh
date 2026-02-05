#!/bin/bash

# Check if a filename was provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILE="$1"
LIMIT=1048576  # 1MB in bytes

# Check if file exists
if [ ! -f "$FILE" ]; then
    echo "Error: File does not exist."
    exit 1
fi

# Get file size in bytes
SIZE=$(stat -c%s "$FILE")

# Compare file size
if [ "$SIZE" -gt "$LIMIT" ]; then
    echo "Warning: File is too large"
else
    echo "File size is within limits."
fi

