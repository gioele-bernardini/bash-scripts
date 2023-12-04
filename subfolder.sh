#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 <source_directory> <subfolder_name>"
  exit 1
fi

source_directory="$1"
subfolder_name="$2"

if [ ! -d "$source_directory" ]; then
  echo "Error: '$source_directory' is not a valid directory."
  exit 1
fi

# Create a new directory inside the source directory
new_directory="${source_directory}/${subfolder_name}"
mkdir "$new_directory"

# Move all the files from the source directory to the new directory
mv "$source_directory"/* "$new_directory" 2>/dev/null

echo "All files have been moved from '$source_directory' to '$new_directory'."
