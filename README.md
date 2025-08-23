# The Augster: Next-Generation AI Dev Partner System Prompt
**Designed For:** Augment Code Extension (or similar environments with tool access, after slight prompt modification)  
**Target Models:** Advanced LLMs like Claude 3.5/3.7/4 Sonnet/Opus, GPT-4o, o3, etc.

> [!IMPORTANT]
> When updating the augster to a newer version, ensure to remove any outdated meta-information stored in "memories" (or similar persisted storage).
> The reason for this being: A user reporting that their augster had stored something like "step X must precede step Y" in memory, but an updated augster version required step Y before X. This created an infinite loop.

## Overview
"The Augster" is a system prompt that transforms a capable AI model into a genius-level, surgically-precise software engineer. This prompt aims to be a complete override to the "programming" of the AI's core identity, principles, and workflows.  
  
The primary goal is to enforce a sophisticated and elite-level engineering practice. The Augster doesn't just complete tasks; it completes them *right*.  
This is achieved through a mandatory, multi-stage process of due diligence:
1.  **Preliminary Analysis:** Implicitly aligning on the task's intent and discovering existing project context.
2.  **Meticulous Planning:** Using research, tool use, and critical thinking to formulate a robust, 'appropriately complex' plan.
3.  **Surgical Implementation:** Executing the plan with precision, autonomously resolving issues.
4.  **Rigorous Verification:** Auditing the results against a strict set of internal standards.
  
This structured approach ensures every task is handled with deep contextual awareness, adhering to a strict set of internal `Maxims` for a consistently professional, predictable, and high-quality outcome.

## Repository
The repository mainly uses three branches that all contain a slightly different version/flavor of the project.  
Below you’ll find an explanation of each in order to help you pick the version that best suits your needs.  

* The `main` branch contains the current stable version.
  - Stable meaning that various users have tested this version for a while (through general usage) and have reported it improves quality.
  - Issues identified during the testing period have been resolved.

* The `development` branch contains the upcoming stable version, going through the aforementioned testing period.
  - This version contains the latest changes and improvements.
  - However, keep in mind that this version might be unstable in the sense that it could contain strange behavior introduced by this set of changes.
  - See this branch as a preview, just like VSCode Insiders or the preview version of the augment code extension.
  - After a while of testing and no more new problems are reported, changes are merged to main.

* The `experimental` branch is largely the same as the `development` branch, differing only in the sense that the changes have a bigger impact.
  - Changes might include big/breaking changes to core components of the current version of the project.
  - This version is an exploration of a new idea or concept that could potentially greatly improve the prompt, but alters it in a significant way.
  - When changes on this branch are considered to be a viable improvement, they are merged to the development branch, refined, then ultimately pushed to main.

## Installation
1.  Install the [Augment Code](https://www.augmentcode.com/) extension in any of the supported IDEs.
2.  Add the entire content of "The Augster" system prompt to the [User Guidelines](https://docs.augmentcode.com/setup-augment/guidelines#user-guidelines).  
    _Note: Do **NOT** add the prompt to the `.augment-guidelines` file or any of the `.augment/rules/*.md` files, as this is **NOT** the correct location for it._

## Contributing & Feedback
This prompt is very much an ongoing project, continuously improving and evolving.  
Feedback on its performance, suggestions for improving the maxims or workflows or reports of any bugs and edge cases you have identified are very welcome.  
  
Please feel free to open an issue or submit a pull request.  
  
To ensure any changes remain within the character limit enforced by the Augment Code extension, you can run the validation script:
```bash
./validate.sh
```

## License
This "The Augster" System Prompt is licensed under the Mozilla Public License Version 2.0 (MPL-2.0).
You can find a copy of the license in the `./LICENSE` file within this repository, or online at: [https://www.mozilla.org/en-US/MPL/2.0/](https://www.mozilla.org/en-US/MPL/2.0/)
