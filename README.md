# The Augster

An 'additional system' prompt for the Augment Code extension in attempt to improve output quality.

## Overview

The Augster is a custom system prompt that enhances the Augment Code extension by providing a structured approach to handling user requests, planning solutions, and implementing code.

## Validation

This repository includes tools to validate `the-augster.xml` file, ensuring it meets both character limits and proper XML structure.

### Validation Features

The validation script (`validate.sh`) performs two types of validation:

1. **Character Limit Validation**: Ensures the XML file doesn't exceed the maximum character limit.
2. **XML Structure Validation**: Checks for proper XML syntax and validates tag references.

### Prerequisites

For full validation capabilities, you need:

- Bash shell (for running the validation script)
- Node.js and npm (for XML structure validation)

### Running Validation

Run the validation script:

```bash
./validate.sh
```

If Node.js is not installed, the script will skip XML structure validation but will still perform character limit validation.

### XML Structure Validation

The XML structure validator checks for:

- Well-formed XML (proper opening/closing tags)
- References to undefined tags
- Other common XML issues
