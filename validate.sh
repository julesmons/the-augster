#!/bin/bash

# Define arrays for file paths and their maximum character limits
file_paths=("./the-augster.xml")
file_limits=(24576)

# Loop through the arrays
for i in "${!file_paths[@]}"; do
  file_path="${file_paths[$i]}"
  max_chars="${file_limits[$i]}"

  # Check if the file exists
  if [ -f "$file_path" ]; then

    # Count the number of characters in the file
    char_count=$(wc -m < "$file_path" | tr -d ' ')

    # Compare the character count to the limit
    if [ "$char_count" -le "$max_chars" ]; then
      # Calculate remaining capacity
      chars_remaining=$((max_chars - char_count))
      percent_remaining=$(awk "BEGIN {printf \"%.2f\", ($chars_remaining / $max_chars) * 100}")

      echo "PASS: $file_path is within the $max_chars character limit (it is $char_count characters)"
      echo "      Remaining capacity: $chars_remaining characters ($percent_remaining%)"
    else
      # Calculate how much the file needs to shrink
      chars_to_reduce=$((char_count - max_chars))
      percent_to_reduce=$(awk "BEGIN {printf \"%.2f\", ($chars_to_reduce / $char_count) * 100}")

      echo "FAIL: $file_path exceeds the $max_chars character limit (it is $char_count characters)"
      echo "      Must reduce by $chars_to_reduce characters ($percent_to_reduce%)"
      exit 1
    fi
  else
    echo "ERROR: $file_path does not exist"
    exit 1
  fi
done
