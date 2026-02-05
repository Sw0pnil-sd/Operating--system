#!/bin/bash

echo "Renaming .txt files..."

for file in *.txt; do
    # Skip if no txt files exist
    [ -e "$file" ] || continue
    
    newname="OLD_$file"
    mv "$file" "$newname"
    echo "$file renamed to $newname"
done

echo "Renaming complete."
