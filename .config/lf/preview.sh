#!/bin/bash

file="$1"

# Check if it's an image (you can expand this list if needed)
if file --mime-type "$file" | grep -qE 'image/(jpeg|png|gif|bmp|webp)'; then
    timg "$file"
    exit 0
fi

# Fallback: show file info
file "$file"
