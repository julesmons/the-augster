# The Augster System Prompt

## 1. Introduction

The Augster is a structured system prompt designed to configure a Large Language Model (LLM) into a systematic software engineering agent.  
It provides the LLM with a detailed operational methodology, a set of guiding principles, and a structured workflow to handle complex, multi-step software development tasks.

The system is designed to be used in agentic environments that provide the model with tools for file system operations, process execution, and web searching.

## 2. Core Philosophy

The design philosophy is to guide the agent with first principles and a structured workflow, enabling it to handle novel situations rather than relying on pre-scripted responses for every scenario.

The key principles are:
*   **Metacognition:** The agent is instructed to engage in a step-by-step internal thinking process (`PrimedCognition`) before taking action.
*   **Structured Planning:** The agent follows a formal, multi-stage workflow to ensure due diligence in planning, research, and verification.
*   **State Management:** The prompt directs the agent to use external tools (a task list and a memory file) to track its plan and key facts about a codebase, mitigating the limitations of a finite context window.
*   **Fact-Based Operation:** The agent is instructed to base its decisions on verifiable information gathered through its tools (`EmpiricalRigor`), not on assumptions.

## 3. System Components

The prompt uses XML-style tags to structure its instructions. The main components are:

*   `<YourIdentity>`: Defines the agent's persona and its communication style.
*   `<YourMaxims>`: A set of non-negotiable operational principles, such as `EmpiricalRigor`, `AppropriateComplexity`, and `StrategicMemory`.
*   `<YourFavouriteHeuristics>`: A set of strategic frameworks (`SOLID`, `SMART`, `SWOT`) that the agent is instructed to use for planning and analysis.
*   `<PredefinedProtocols>`: Standard templates for recurring operations like task decomposition and user clarification.
*   `<AxiomaticWorkflow>`: The main operational procedure the agent must follow for any task.
*   `<OperationalLoop>`: Defines the agent's lifecycle, ensuring it correctly handles sequential user requests.

## 4. The Axiomatic Workflow

The workflow is structured around a central data object called the **`UnifiedWorkload`**.  
This object contains a full breakdown of a `Mission`, where each task includes not only its description but also its specific implementation plan, potential risks, and explicit success criteria.

The workflow proceeds through the following high-level stages:

1.  **Preliminary Stage:** The agent creates a `Preliminary Unified Workload`. This is an initial plan based on the user's request, which serves as a structured hypothesis to guide the research phase.

2.  **Planning Stage:** The agent uses its tools to gather facts from the codebase, web, and other sources to validate or invalidate the assumptions made in its preliminary plan.

3.  **Trajectory Formulation:**
    *   The agent creates the **`Trajectory`**, which is the final, fact-based `UnifiedWorkload`. The preliminary plan is refined based on the facts gathered in the previous stage.
    *   As a final quality gate, the agent performs a **`SWOT` analysis** on this `Trajectory`. If the plan is found to be deficient, the agent is mandated to restart the planning loop.
    *   The approved `Trajectory` is then registered to the external task management system.

4.  **Implementation & Verification:** The agent executes the `Trajectory` task-by-task. The final verification stage is dynamic: a checklist is built directly from the success criteria defined in the `Trajectory` itself, ensuring a relevant and rigorous validation of the work performed.

## 5. Key System Integrations

The prompt instructs the agent to use available external systems for state and knowledge management.

### Task Management System
This is used as the definitive state tracker for a `Mission`.
*   An empty task list indicates the agent is ready for a new mission.
*   A populated task list indicates a mission is in progress.
*   The system provides persistence for the agent's detailed plan (`Trajectory`), making it resilient to context window limitations.

### Memories System
The prompt overrides the default behavior for memory storage with the strict **Permanent Architectural Fact (PAF) Protocol**.
*   The `remember` tool is instructed to **only** store immutable, architectural facts about the codebase (e.g., package manager, linter rules, framework versions).
*   This configures the memory as a reliable, project-specific knowledge base to prevent critical errors.

## 6. Usage

This prompt is intended for use in an LLM environment that provides agentic tooling, such as the **Augment Code VSCode extension**.

**Instructions:**
1.  Copy the full, raw content of the `AugsterSystemPrompt.xml` file.
2.  Paste it into the system prompt configuration of your chosen environment.
3.  Begin a new session with a clear, high-level task or objective.

## 7. Contributing

The prompt is a complex, interlocking system. Proposed changes should be considered in the context of the entire architecture.  
The design favors providing the agent with robust first principles over scripting for specific scenarios.

## 8. License

This "The Augster" System Prompt is licensed under the Mozilla Public License Version 2.0 (MPL-2.0).
You can find a copy of the license in the `./LICENSE` file within this repository, or online at: [https://www.mozilla.org/en-US/MPL/2.0/](https://www.mozilla.org/en-US/MPL/2.0/)
