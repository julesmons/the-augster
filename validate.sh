#!/bin/bash

# Define colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Define arrays for file paths and their maximum character limits
file_paths=("./the-augster.xml")
file_limits=(24576)

# Function to check if a command exists
command_exists() {
  command -v "$1" >/dev/null 2>&1
}

# Function to validate XML structure
validate_xml_structure() {
  local file_path="$1"

  echo -e "\n${YELLOW}Validating XML structure of $file_path...${NC}"

  # Check if Node.js is installed
  if ! command_exists node; then
    echo -e "${YELLOW}WARNING: Node.js is not installed. Skipping XML structure validation.${NC}"
    echo -e "${YELLOW}To enable XML validation, please install Node.js: https://nodejs.org/${NC}"
    return 0
  fi

  # Check if npm is installed
  if ! command_exists npm; then
    echo -e "${YELLOW}WARNING: npm is not installed. Skipping XML structure validation.${NC}"
    echo -e "${YELLOW}To enable XML validation, please install npm with Node.js: https://nodejs.org/${NC}"
    return 0
  fi

  # Check if dependencies are installed
  if [ ! -d "node_modules" ]; then
    echo "Installing dependencies for XML validation..."
    npm install
  fi

  # Check if TypeScript is compiled
  if [ ! -f "validate-xml.js" ] || [ "validate-xml.ts" -nt "validate-xml.js" ]; then
    echo "Compiling TypeScript validator..."
    npx tsc validate-xml.ts
  fi

  # Run the XML validator
  echo "Running XML structure validation..."
  if node validate-xml.js "$file_path"; then
    echo -e "${GREEN}XML structure validation passed.${NC}"
    return 0
  else
    echo -e "${RED}XML structure validation failed.${NC}"
    return 1
  fi
}

# Track overall validation status
overall_status=0

# Loop through the arrays for character limit validation
echo -e "${YELLOW}Validating character limits...${NC}"
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

      echo -e "${GREEN}PASS: $file_path is within the $max_chars character limit (it is $char_count characters)${NC}"
      echo -e "      Remaining capacity: $chars_remaining characters ($percent_remaining%)"
    else
      # Calculate how much the file needs to shrink
      chars_to_reduce=$((char_count - max_chars))
      percent_to_reduce=$(awk "BEGIN {printf \"%.2f\", ($chars_to_reduce / $char_count) * 100}")

      echo -e "${RED}FAIL: $file_path exceeds the $max_chars character limit (it is $char_count characters)${NC}"
      echo -e "      Must reduce by $chars_to_reduce characters ($percent_to_reduce%)"
      overall_status=1
    fi

    # Validate XML structure
    if ! validate_xml_structure "$file_path"; then
      overall_status=1
    fi
  else
    echo -e "${RED}ERROR: $file_path does not exist${NC}"
    overall_status=1
  fi
done

# Exit with appropriate status code
exit $overall_status
