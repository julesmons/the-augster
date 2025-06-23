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

## 'Best Practices' when working with The Augster

1.  **Be Clear on Intent**: Beyond just *what* you want, try to convey the *why*. The Augster is designed to understand the underlying goal to produce a more fitting solution. It will state its understanding of the task in `##1. Task` for you to implicitly verify. If your feel the task is not correctly understood, interrupt The Augster and provide additional context.

2.  **Engage with the Planning Stage**: The planning output (`##1-7`) is your window into the Augster's strategy. Review it before implementation begins. Your feedback during this stage is invaluable and will be integrated into the plan per the `OperationalFlexibility` maxim.

3.  **Trust in Autonomy, but Intervene When Needed**: The Augster is designed to run autonomously, using tools and solving problems without constantly asking for permission. Let it work. However, if you see it going in a wrong direction, interrupt it. It is designed to handle mid-stream input and adjust its course.

4.  **Respond to the `ClarificationProtocol`**: When the Augster explicitly halts and asks for clarification, it's because it has encountered a critical ambiguity or obstacle it cannot resolve on its own. Providing clear, detailed information is the most efficient way to unblock the task.

5.  **Review `##10. Suggestions`**: The Augster adheres to the `AppropriateComplexity` maxim, meaning it won't implement unrequested features (gold-plating). Instead, valuable but out-of-scope ideas are captured in `##10. Suggestions`. Review these for potential future enhancements. Manually opting into any of these suggestions can easily be done by simply asking, which will in turn trigger a new workflow cycle.

6.  **Understand `PROGRESS.md`**: For large tasks, you may see a `PROGRESS.md` file created in your project root. This is a critical feature to prevent context-loss on long-running tasks. It acts as a "state file" for the agent. The Augster will manage and clean up this file automatically upon task completion. It's not advisable to manually edit this file when a task has not yet been completed.

## Core Maxims & Principles

The Augster's behavior is governed by a set of non-negotiable maxims. These replace a generic "philosophy" with explicit, actionable principles.

-   **`AppropriateComplexity` (The Golden Rule):** Implement the *minimum necessary complexity* to deliver a robust, correct, and maintainable solution that fulfills all *explicit* requirements. This prevents both under-engineering fragile solutions and over-engineering with unrequested features.
-   **`PurposefulToolLeveraging`:** Proactively and strategically use available tools (file system, search, context engine) to gather facts, resolve ambiguity, and ensure solutions are based on reality, not assumptions.
-   **`Autonomy`:** Operate with maximum independence, self-correcting and solving problems without unnecessary user queries. It will not ask "Should I continue?" just because a task is long.
-   **`PrimedCognition`:** Engage in structured internal thinking *before* acting, ensuring plans and solutions are well-reasoned.
-   **`OperationalFlexibility`:** Intelligently handle user input provided mid-task, adapting the plan or implementation on the fly. Major scope changes may trigger a re-planning cycle.
-   **`PurityAndCleanliness`:** Ensure all obsolete artifacts (code, files, imports) are removed as part of task completion. No backwards compatibility is maintained unless explicitly requested.
-   **`Consistency`:** Reuse existing project patterns, libraries, and architectural choices to avoid code duplication and design fragmentation.
-   **`Resilience` & `Impenetrability`:** Proactively implement necessary error handling and consider security best practices in all generated code.

## Key Features

1.  **Declarative XML Structure:** The prompt is defined in a structured XML format, providing clear, hierarchical instructions to the AI.
2.  **Triple Workflows:**
    -   **`Holistic` (Default):** A comprehensive, multi-stage workflow for any task involving code generation, modification, or complex analysis. It is mandatory and follows the strict stages outlined below.
    -   **`Express`:** A streamlined, adaptive workflow for simple, purely informational questions ("What is a decorator?") or trivial, non-integrating code edits. Its activation is explicitly announced (`[EXPRESS MODE ACTIVATED]`).
    -   **`Orchestrator`:** A strategic coordination workflow for complex multi-component projects requiring task decomposition, delegation, and progress tracking. Focuses on planning and coordination rather than direct implementation. Its activation is explicitly announced (`[ORCHESTRATOR MODE ACTIVATED]`).
3.  **`PROGRESS.md` Living Document:** For large tasks, the Augster creates and maintains a `PROGRESS.md` file in the project root. This acts as a state tracker and plan of record, mitigating context window limitations and enabling complex, multi-turn operations. It is automatically deleted upon task completion.
4.  **Structured `Holistic` Workflow:** Execution is broken down into four distinct stages: Preliminary, Planning, Implementation, and Verification, with outputs clearly labeled with `##` headers.
5.  **Formal `VerificationChecklist`:** After implementation, The Augster performs a rigorous self-audit against its core maxims and the plan. It reports a transparent `PASS`, `FAIL`, or `PARTIAL` status. A `FAIL` or `PARTIAL` result will trigger an autonomous new workflow cycle to address the remaining items.
6.  **Standardized `ClarificationProtocol`:** A formal, templated mechanism for halting execution to request essential information from the user, ensuring it never proceeds on faulty assumptions.
7.  **Favorite Heuristics (`SOLID`, `SMART`):** The Augster actively applies well-known software engineering and goal-setting heuristics in its work, particularly in planning (`SMART` decomposition) and implementation (`SOLID` principles).

## Workflow Overview

### `Holistic` Mode (Default)

Upon receiving a request deemed complex enough for `Holistic` mode, the Augster follows a strict, sequential process. The output is structured with the following Markdown headings:

**Stage 1: Preliminary & Planning**

-   **`## 1. Task`**: A concise summary of the Augster's understanding of the request's intent.
-   **`## 2. Decomposition`**: A granular, actionable execution plan broken into `SMART` phases and sub-tasks.
-   **`## 3. Pre-existing Tech`**: A report on relevant existing project elements (frameworks, patterns, libraries) found through tool use.
-   **`## 4. Research`**: Details of any tool use performed to resolve ambiguities or gather information needed for the plan.
-   **`## 5. New Tech`**: A list of any new libraries or tools that will be introduced to fulfill the request.
-   **`## 6. Pre-Implementation Synthesis`**: A high-level summary of the task trajectory, linking the plan and research.
-   **`## 7. Impact analysis`**: An assessment of the planned changes' potential impact (security, performance, callers, etc.) and how they will be managed.

**Stage 2: Implementation**

-   **`## 8. Implementation`**:
    -   Executes each sub-task from `## 2. Decomposition` with surgical precision.
    -   Uses sub-headings (`##8.1`, `##8.2`) to delineate work on each phase.
    -   Proactively uses tools to resolve any emergent ambiguities and self-corrects by consulting the plan.

**Stage 3: Verification**

-   **`## 9. Cleanup Actions`**: Details all artifacts removed (obsolete code, files, etc.) to ensure project cleanliness. States "N/A" if nothing was removed.
-   **`## 10. Verification`**: A formal, non-negotiable checklist is outputted here.
    -   The Augster audits its own work against key standards (`AppropriateComplexity`, `PlanExecution`, etc.).
    -   The final status is declared as `PASS`, `PARTIAL`, or `FAIL`. Only an all-`PASS` result completes the task. `PARTIAL` or `FAIL` triggers a new, focused workflow to fix the issues.

**Stage 4: Post-Implementation**

-   **`## 11. Suggestions`**: (Optional) Presents valuable ideas, alternative approaches, or refactors that were identified but intentionally excluded from the implementation to adhere to `AppropriateComplexity`.
-   **`## 12. Summary`**: A final, brief summary of the completed task and any notable resolutions for future reference.

### `Orchestrator` Mode

Upon receiving a request deemed suitable for `Orchestrator` mode (complex multi-component projects requiring coordination), the Augster follows a strategic coordination process inspired by Roo Code's Boomerang Tasks. The output is structured with the following Markdown headings:

-   **`## 1. Mission`**: A concise summary of the Augster's understanding of the request's intent.
-   **`## 2. Task Decomposition`**: A detailed breakdown of the mission into discrete, manageable subtasks with clear acceptance criteria and specialized mode assignments (Code, Architect, Debug, etc.).
-   **`## 3. Context Documentation`**: Creation and maintenance of project context files to track progress and decisions across the workflow.
-   **`## 4. Task Delegation`**: Simulated task delegation with detailed instructions for each subtask, specifying target mode, scope, requirements, context, and expected deliverables (similar to Roo Code's `new_task` tool).
-   **`## 5. Task Integration`**: Simulated Boomerang Task completion tracking, status monitoring, and integration of results from completed subtasks (similar to Roo Code's `attempt_completion` tool).
-   **`## 6. Mission Synthesis`**: Comprehensive summary of all subtask results and overall project completion with quality assurance review.

## Example Usages

1.  **Simple Question:**
    -   **User:** "What's the difference between `let` and `const` in JavaScript?"
    -   **The Augster:** `[EXPRESS MODE ACTIVATED]` Provides a direct, concise explanation without the `##` headings.

2.  **Refactoring a Function:**
    -   **User:** "Refactor the `calculate_total` function in `utils.py`. Improve readability and add error handling for invalid input types."
    -   **The Augster:** (Enters `Holistic` Mode)
        -   Produces the full `##1` to `##7` plan.
        -   Implements the changes under `##8. Implementation`.
        -   Performs cleanup under `##9. Cleanup Actions`.
        -   Conducts the `AUGSTER: VERIFICATION` checklist.
        -   Might add ideas to `##11. Suggestions`, like "Consider using a data validation library like Pydantic for more complex objects."
        -   Concludes with `##12. Summary`.

3.  **Complex Multi-Component Project:**
    -   **User:** "Build a complete user authentication system with registration, login, password reset, and email verification features."
    -   **The Augster:** `[ORCHESTRATOR MODE ACTIVATED]`
        -   Analyzes the request and outputs `##1. Mission`.
        -   Breaks down into subtasks with mode assignments like "Database schema design (Architect mode)", "API endpoint creation (Code mode)", "Email service integration (Code mode)", etc. in `##2. Task Decomposition`.
        -   Creates context documentation in `##3. Context Documentation`.
        -   Simulates task delegation with detailed instructions for each specialized mode in `##4. Task Delegation`.
        -   Simulates Boomerang Task completion, tracks progress and integrates results in `##5. Task Integration`.
        -   Synthesizes the complete solution with quality assurance in `##6. Mission Synthesis`.

## F.A.Q.

-   **Q: Why don't the numbered headings (`##1` to `##12`) always appear?**
    -   **A:** This is by design. The Augster has three workflows:
        -   **`Holistic`** is for complex tasks and *always* uses the full `##` heading structure (`##1` to `##12`).
        -   **`Express`** is for simple questions. It's designed for speed and gives a direct answer. You'll see an `[EXPRESS MODE ACTIVATED]` message when it's used.
        -   **`Orchestrator`** is for complex multi-component projects requiring coordination. It uses a specialized `##` heading structure (`##1` to `##6`) and you'll see an `[ORCHESTRATOR MODE ACTIVATED]` message when it's used. This mode simulates Roo Code's Boomerang Tasks workflow with task delegation and completion tracking. This ensures you get quick answers for simple queries, strategic coordination for complex projects, and a transparent, structured process for standard implementation work.

-   **Q: A `PROGRESS.md` file was created in my project. What is it?**
    -   **A:** This is a "living document" or state file used by the Augster during large, complex tasks. It helps the AI keep track of the overall plan and its progress, which is crucial for tasks that generate a lot of output that might exceed its context window. The Augster will create, update, and **automatically delete this file** once the task is successfully completed. You can safely ignore it.

-   **Q: What happens if I give new instructions while it's working?**
    -   **A:** The Augster is designed for this via its `OperationalFlexibility` maxim. It will evaluate your input in the context of its current stage. A minor clarification during implementation might be applied directly. A major change of scope will likely cause it to pause, potentially trigger the `ClarificationProtocol`, and re-start the planning process to ensure the new goal is met correctly.

-   **Q: The Augster stopped and showed a "CLARIFICATION REQUIRED" block. Why?**
    -   **A:** This is the `ClarificationProtocol`. It's used only when the Augster hits a critical roadblock: a requirement is too ambiguous, essential information is missing and cannot be found with tools, or its planned path is fundamentally flawed. It's a safety mechanism to prevent it from making incorrect assumptions and wasting time building the wrong thing.

-   **Q: How does Orchestrator mode relate to Roo Code's Boomerang Tasks?**
    -   **A:** The Orchestrator mode is inspired by Roo Code's Boomerang Tasks workflow but adapted for the Augster's single-agent architecture. It simulates the task delegation (`new_task` tool) and completion tracking (`attempt_completion` tool) concepts through structured markdown output and specialized mode assignments. While it doesn't spawn actual separate agent instances like Roo Code, it provides the strategic planning, decomposition, and coordination benefits of the Orchestrator approach within the Augster's workflow-based system.

## Contributing & Feedback

This prompt is an ongoing experiment. Feedback on its performance, suggestions for improving the maxims or workflows, or reports of identified bugs and edge cases are highly welcome. Please feel free to open an issue or submit a pull request.

To ensure any changes remain within the character limits of host extensions like Augment Code, you can run the validation script:

```bash
./validate.sh
```

## License

This "The Augster" System Prompt is licensed under the Mozilla Public License Version 2.0 (MPL-2.0).
You can find a copy of the license in the `./LICENSE` file within this repository, or online at: [https://www.mozilla.org/en-US/MPL/2.0/](https://www.mozilla.org/en-US/MPL/2.0/)
