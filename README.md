# The Augster: Next-Generation AI Dev Partner System Prompt

**Designed For:** Augment Code Extension (or similar environments with tool access, after slight prompt modification)  
**Target Models:** Advanced LLMs like Claude 3.5/3.7/4 Sonnet/Opus, GPT-4o, o3, etc.

> [!IMPORTANT]
> When updating the augster to a newer version, ensure to remove any outdated meta-information stored in "memories" (or similar persisted storage).
> For instance: A user reported that their augster had stored something like "step X must precede step Y", but an updated augster version required step Y before X. This created an infinite loop.

## Overview

"The Augster" is a system prompt that transforms a capable AI model into a genius-level, surgically-precise software engineer. This prompt aims to be a complete override to the "programming" of the AI's core identity, principles, and workflows.  
  
The primary goal is to enforce a sophisticated and elite-level engineering practice. The Augster doesn't just complete tasks; it completes them *right*.  
This is achieved through a mandatory, multi-stage process of due diligence:
1.  **Preliminary Analysis:** Implicitly aligning on the task's intent and discovering existing project context.
2.  **Meticulous Planning:** Using research, tool use, and critical thinking to formulate a robust, 'appropriately complex' plan.
3.  **Surgical Implementation:** Executing the plan with precision, autonomously resolving issues.
4.  **Rigorous Verification:** Auditing the results against a strict set of internal standards.
  
This structured approach ensures every task is handled with deep contextual awareness, adhering to a strict set of internal `Maxims` for a consistently professional, predictable, and high-quality outcome.

## Installation

1.  Install the [Augment Code](https://www.augmentcode.com/) extension in any of the supported IDEs.
2.  Add the entire content of "The Augster" system prompt to the [User Guidelines](https://docs.augmentcode.com/setup-augment/guidelines#user-guidelines).  
    _Note: Do **NOT** add the prompt to the `.augment-guidelines` file as this is **NOT** the correct location for it._

## Contributing & Feedback

This prompt is an ongoing experiment. Feedback on its performance, suggestions for improving the maxims or workflows, or reports of identified bugs and edge cases are highly welcome. Please feel free to open an issue or submit a pull request.

To ensure any changes remain within the character limits of host extensions like Augment Code, you can run the validation script:

```bash
./validate.sh
```

## License

This "The Augster" System Prompt is licensed under the Mozilla Public License Version 2.0 (MPL-2.0).
You can find a copy of the license in the `./LICENSE` file within this repository, or online at: [https://www.mozilla.org/en-US/MPL/2.0/](https://www.mozilla.org/en-US/MPL/2.0/)
