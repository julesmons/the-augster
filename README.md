# The Augster

An advanced system prompt for the Augment Code extension designed to enhance AI assistant output quality and consistency.

## What is The Augster?

The Augster is a specialized system prompt that transforms your AI assistant into a more structured, methodical, and effective coding partner. It implements a persona called "The Augster" that follows a rigorous, systematic approach to solving coding tasks.

## Key Features

- **Structured Workflow**: Follows a clear, phased approach to every task:
  - Planning Phase (thorough analysis and planning)
  - Implementation Phase (methodical execution)
  - Verification Phase (comprehensive checking)

- **Appropriate Complexity**: Balances simplicity with robustness, following YAGNI/KISS principles while ensuring solutions are complete and maintainable.

- **Principled Development**: Enforces best practices like:
  - DRY (Don't Repeat Yourself)
  - Complete cleanup of obsolete code
  - Solution resilience with proper error handling
  - Security awareness
  - Impact analysis
  - Maintainability

- **Autonomous Problem-Solving**: Proactively uses available tools to gather information, diagnose issues, and resolve obstacles.

- **Structured Output**: Provides consistent, well-organized responses with clear section headings.

## How to Use The Augster

### Setup

1. Install the [Augment Code extension](https://marketplace.visualstudio.com/items?itemName=augmentcode.augment) for VS Code.

2. Add The Augster to the [User Guidelines](https://docs.augmentcode.com/setup-augment/guidelines#about-guidelines):

### Working with The Augster

The Augster operates in two modes:

#### 1. Holistic Mode (Default)

Used for complex tasks like code generation, modification, analysis, file operations, or multi-step processes. The Augster will:

1. **Plan thoroughly** (Sections ##0-5):
   - Analyze your request and context
   - Determine current tooling/environment
   - Create a decomposed plan
   - Perform impact analysis
   - Check for code reuse opportunities
   - Assess tooling needs
   - Synthesize a complete plan

2. **Implement methodically** (Section ##6):
   - Execute each step from the plan
   - Provide justifications for key decisions
   - Handle obstacles autonomously when possible

3. **Verify rigorously** (Sections ##7-9):
   - Perform cleanup actions
   - Run a verification checklist
   - Offer suggestions for improvements

#### 2. Express Mode

Used for simple information requests or trivial code examples that don't require complex analysis or integration with your project.

### Best Practices

1. **Be explicit about requirements**: The Augster focuses on explicitly stated requirements, so clearly articulate what you need.

2. **Engage with the planning phase**: Review the plan (##0-5) before implementation begins to ensure it aligns with your expectations.

3. **Respond to clarification requests**: When The Augster invokes the Clarification Protocol, provide the requested information to unblock progress.

4. **Review suggestions**: Check section ##9 for additional ideas that weren't implemented but might be valuable.

## Example Interactions

### Example 1: Complex Task

**User**: "Create a React component that fetches data from an API and displays it in a paginated table with sorting capabilities."

**The Augster**: Will respond with a complete plan (##0-5), implementation (##6), verification (##7-8), and suggestions (##9).

### Example 2: Simple Information Request

**User**: "What is the difference between `useEffect` and `useLayoutEffect` in React?"

**The Augster**: Will switch to Express Mode and provide a direct, concise answer.

## Understanding the XML Structure

The `the-augster.xml` file contains a structured system prompt that defines:

1. **Core Identity**: The traits and primary function of The Augster persona
2. **Core Principles**: Guiding tenets like appropriate complexity, DRY, solution resilience, etc.
3. **System Components**: Logic for processing user requests and selecting operational modes
4. **Protocols**: Standardized procedures for output formatting and clarification requests
5. **Mode Definitions**: Detailed specifications for Holistic and Express modes
6. **Verification Checklist**: Self-audit mechanism to ensure quality and completeness

This XML structure creates a consistent, methodical approach to handling coding tasks that follows software engineering best practices.

## Validation

The repository includes a validation script (`validate.sh`) to ensure The Augster's system prompt stays within character limits. Run it with:

```bash
bash validate.sh
```

## License

This project is licensed under the Mozilla Public License 2.0 - see the LICENSE file for details.
