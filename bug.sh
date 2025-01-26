#!/bin/bash

# This script attempts to process a file, but it contains a subtle error.
# The error is related to how the loop condition is handled and the use of 'read'.

file_to_process="data.txt"

while IFS= read -r line; do
  # Process each line of the file
  echo "Processing line: $line"
  # The problematic part of the script
  if [[ "$line" == "END" ]]; then
    break  # Exit loop if line equals "END"
  fi
  #Do some processing of the line
done < "$file_to_process"

#Some extra code
echo "Finished processing the file."