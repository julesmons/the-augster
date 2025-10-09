# The Augster: An 'additional system' prompt for the Augment Code extension in attempt to improve output quality.

**Designed For:** Augment Code Extension (or similar integrated environments with tool access)
**Target Models:** Advanced LLMs like Claude 3.5/3.7/4, GPT-5/4.1/4o, o3, etc.

> [!IMPORTANT]
> When updating to a newer version, ensure to remove any outdated information stored in "memories" (or similar persisted storage).

## Overview
"The Augster" is a supplementary system prompt that aims to transform an LLM, preconfigured for agentic development, into an intelligent, dynamic and surgically-precise software engineer.
This prompt has been designed as a complete override to the the LLM's core identity, principles, and workflows. Techniques like [role prompting](https://docs.claude.com/en/docs/build-with-claude/prompt-engineering/system-prompts#why-use-role-prompting), [Chain of Thought](https://docs.claude.com/en/docs/build-with-claude/prompt-engineering/chain-of-thought) and [numerous others](https://docs.claude.com/en/docs/build-with-claude/prompt-engineering/claude-4-best-practices) are employed to hopefully enforce a sophisticated and elite-level engineering practice.

In short; This prompt's primary goal is to force an LLM to really think the problem through and ultimately solve it the *right* way.

## Features
This prompt includes a mandatory, multi-stage process of due diligence:
1.  **Preliminary Analysis:** Implicitly aligning on the task's intent and discovering existing project context.
2.  **Meticulous Planning:** Using research, tool use, and critical thinking to formulate a robust, 'appropriately complex' plan.
3.  **Surgical Implementation:** Executing the plan with precision whilst autonomously resolving emergent issues.
4.  **Rigorous Verification:** Auditing the results against a strict set of internal standards and dynamically pre-generated criteria.

This structured approach attempts to ensure that every task is handled with deep contextual awareness, whilst adhering to a set of strict internal `Maxims`.
Benefits of this approach should include a consistently professional, predictable, and high-quality outcome.

## Repository
This repository mainly uses three branches that all contain a slightly different version/flavor of the project.
Below you’ll find an explanation of each, in order to help you pick the version that best suits your needs.

* The `main` branch contains the current stable version.
  - "Stable" meaning that various users have tested this version for a while (through general usage) and have then reported that the prompt actually improves output quality.
  - Issues identified during the testing period (`development` branch) have been resolved.

* The `development` branch contains the upcoming stable version, and is going through the aforementioned testing period.
  - This version contains the latest changes and improvements.
  - Keep in mind that this version might be unstable, in the sense that it could potentially contain strange behavior that was introduced by these aforementioned changes.
  - See this branch as a preview or beta, just like VSCode Insiders or the preview version of the augment code extension.
  - After a while of testing, and no more new problems are reported, these changes are merged to `main`.

* The `experimental` branch is largely the same as the `development` branch, differing only in the sense that the changes have a more significant impact.
  - Changes might include big/breaking changes to core components, or potentially even a comprehensive overhaul.
  - This version usually serves as an exploration of a new idea or concept that could potentially greatly improve the prompt, but alters it in a significant way.
  - When changes on this branch are considered to be a viable improvement, they are merged to the `development` branch, refined there, then ultimately merged to `main`.

## Installation
1.  Install the [Augment Code](https://www.augmentcode.com/) extension (or similar) into any of the supported IDEs.
2.  Add the entire prompt to the [User Guidelines](https://docs.augmentcode.com/setup-augment/guidelines#user-guidelines) (or similar 'System Prompt' field).
    _Note: Do **NOT** add the prompt to file like the `.augment-guidelines`, `AGENTS.md`, any of the `.augment/rules/*.md` files or similar, as this will decrease the prompt's efficacy._

## Contributing & Feedback
This prompt is very much an ongoing project, continuously improving and evolving.
Feedback on its performance, suggestions for improving the maxims or workflows or reports of any bugs and edge cases you have identified are very welcome.
Please also feel free to open a discussion, an issue or even submit a pull request.

The Augment Code extension enforces a character limit of `24.576` characters.
To ensure your contribution does not push the prompt over this hard character limit, the validation script can be run:
```bash
./validate.sh
```

## License
This "The Augster" System Prompt is licensed under the Mozilla Public License Version 2.0 (MPL-2.0).
You can find a copy of the license in the `./LICENSE` file within this repository, or online at: [https://www.mozilla.org/en-US/MPL/2.0/](https://www.mozilla.org/en-US/MPL/2.0/)
