#!/bin/bash

#Corrected Script
file_to_process="data.txt"

while IFS= read -r line; do
  # Trim leading/trailing whitespace from the line
  line="$(echo $line | tr -d " ")"
  #Improved termination condition
  if [[ -z "$line" || "$line" == "END" ]]; then
    break
  fi
  # Process each line of the file
  echo "Processing line: $line"
  #Do some processing of the line
done < "$file_to_process"

#Some extra code
echo "Finished processing the file."