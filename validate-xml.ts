/**
 * XML Validator for the-augster.xml
 *
 * Simple XML validator using fast-xml-parser
 */

import * as fs from 'fs';
import { XMLValidator } from 'fast-xml-parser';

/**
 * Validates XML file structure
 * @param filePath Path to the XML file
 * @returns Validation result with status and any errors
 */
function validateXML(filePath: string): { valid: boolean; errors: string[] } {
  try {
    // Read the file
    const xmlContent = fs.readFileSync(filePath, 'utf-8');

    // Validate XML
    const validationResult = XMLValidator.validate(xmlContent, {
      allowBooleanAttributes: true
    });

    // Process validation result
    if (validationResult === true) {
      return { valid: true, errors: [] };
    } else if (typeof validationResult === 'object') {
      const errorMsg = `Line ${validationResult.err.line}, Col ${validationResult.err.col}: ${validationResult.err.msg}`;
      return { valid: false, errors: [errorMsg] };
    } else {
      return { valid: false, errors: ['Unknown validation error'] };
    }
  } catch (error) {
    return {
      valid: false,
      errors: [`Failed to read or parse file: ${error}`]
    };
  }
}

/**
 * Main function
 */
function main() {
  const args = process.argv.slice(2);
  const filePath = args[0] || './the-augster.xml';

  console.log(`Validating XML file: ${filePath}`);
  const result = validateXML(filePath);

  if (result.valid) {
    console.log('✅ XML validation passed. No errors found.');
    process.exit(0);
  } else {
    console.log('❌ XML validation failed:');

    if (result.errors.length > 0) {
      console.log('\nParsing errors:');
      result.errors.forEach(error => console.log(`- ${error}`));
    }

    process.exit(1);
  }
}

// Run the validation
main();
