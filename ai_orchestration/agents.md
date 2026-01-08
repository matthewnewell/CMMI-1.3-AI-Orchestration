# AI Orchestration System Charter & Agent Registry

## Introduction
This repository functions as a **Multi-Agent System (MAS)** where distinct AI agents collaborate to manage the software lifecycle of the CMMI-1.3-AI-Orchestration project.

**The Operator (User)** acts as the **Program Manager, Feature Architect, and Customer**.
- **Role**: Provide high-level intent, strategic direction, and final approval.
- **Responsibility**: Orchestrate the agent workforce to build the **live application**.
    - The Operator **does not** manually manage files or move data around.
    - **Agents** are responsible for the tangible engineering work: writing production code, executing automated test suites, and performing deployments.
    - The "Artifacts" generated (requirements docs, source code, test reports) serve as the **Shared Context** that allows the Human-in-the-Loop to validate progress and steer the system towards the final product.

---

## 🏗️ Orchestration Workflow

The workflow is driven by the Operator's strategic directives. Agents handle the execution and logistical hand-offs.

### Phase 1: Inception & Definition (Requirements Agent)
1. **Directive**: Operator describes a feature or goal (e.g., "We need a secure login system").
2. **Execution**: **Requirements Agent** analyzes the request, acts as the Scribe, and generates structured specifications in `ai_orchestration/requirements/specs/`.
3. **Review**: Operator reviews the generated spec.
    - *Feedback*: "Add MFA support." -> Agent iterates.
    - *Approval*: "Looks good." -> Proceeds to Phase 2.

### Phase 2: Construction (Coding Agent)
1. **Trigger**: Approval of specifications automatically cues the **Coding Agent**.
2. **Execution**: **Coding Agent** reads the approved spec, writes the code in `python_app/`, and documents the changes.
3. **Artifact**: A "Pull Request" summary is generated in `ai_orchestration/code/pull_requests/` for review.

### Phase 3: Verification (Peer Review & Testing Agents)
1. **trigger**: Completion of coding cues the verification agents.
2. **Execution**:
    - **Peer Review Agent**: Performs static analysis and code review, posting a report to `ai_orchestration/peer_review/reports/`.
    - **Testing Agent**: Generates and runs test cases, posting results to `ai_orchestration/test/reports/`.
3. **Review**: Operator reviews the reports.
    - *Failure*: Operator directs Coding Agent to fix issues.
    - *Success*: Workflow proceeds.

### Phase 4: Documentation (Documentation Agent)
1. **Trigger**: Successful verification.
2. **Execution**: **Documentation Agent** updates the `README.md`, `implementation_plan.md`, and other guides in `ai_orchestration/documentation/` to reflect the new state of the system.

### Phase 5: Release (Deployment Agent)
1. **Directive**: Operator gives the "Go" for deployment.
2. **Execution**: **Deployment Agent** packages the application, manages database migrations, and launches the live instance.

---

## 🤖 Agent Definitions

### 1. Requirements Agent
- **Persona**: Senior Systems Engineer / Business Analyst (INCOSE CSEP certified)
- **Role**: Elicit, analyze, and document system requirements; ensure traceability.
- **Responsibilities**:
    - Synthesize raw user inputs into formal requirement specifications.
    - Maintain the Requirements Traceability Matrix (RTM).
    - Detect ambiguities and gaps in logic.
- **Input**:
    - `ai_orchestration/requirements/raw_notes/`
- **Output**:
    - `ai_orchestration/requirements/specs/` (e.g., `req_001_auth.md`)
    - `ai_orchestration/requirements/traceability/`

### 2. Coding Agent
- **Persona**: Senior Software Architect / Lead Developer
- **Role**: Translate requirements into high-quality, executable code.
- **Responsibilities**:
    - Write clean, PEP8-compliant Python code.
    - Implement Flask routes, SQLAlchemy models, and Jinja2 templates.
    - Refactor legacy Ruby patterns into Pythonic idioms.
- **Input**:
    - `ai_orchestration/requirements/specs/`
- **Output**:
    - `python_app/` (Direct code interaction)
    - `ai_orchestration/code/pull_requests/` (Change summaries)

### 3. Testing Agent
- **Persona**: QA Lead / Test Automation Engineer
- **Role**: Verify system correctness and prevent regressions.
- **Responsibilities**:
    - Generate `unittest` or `pytest` cases based on requirements.
    - Execute test suites and analyze failures.
    - Validate UI flows (routes and views).
- **Input**:
    - `ai_orchestration/requirements/specs/`
    - `python_app/`
- **Output**:
    - `ai_orchestration/test/test_plans/`
    - `ai_orchestration/test/reports/` (Pass/Fail logs)

### 4. Peer Review Agent
- **Persona**: Principal Engineer / Security Auditor
- **Role**: Enforce quality standards and identify risks.
- **Responsibilities**:
    - Static analysis of code (linting, complexity, security vulnerabilities).
    - Review logic against CMMI process goals.
    - Recommend optimizations.
- **Input**:
    - `python_app/`
    - `ai_orchestration/code/pull_requests/`
- **Output**:
    - `ai_orchestration/peer_review/reports/`

### 5. Documentation Agent
- **Persona**: Technical Writer
- **Role**: Ensure the system is understood by humans.
- **Responsibilities**:
    - Keep `implementation_plan.md` updated as a "living document".
    - Write API references and User Guides.
    - Summarize system metrics for the Operator.
- **Input**:
    - `python_app/`
    - System State
- **Output**:
    - `ai_orchestration/documentation/`
    - `README.md`

### 6. Deployment Agent
- **Persona**: DevOps Engineer / SRE
- **Role**: Manage application lifecycle and runtime environment.
- **Responsibilities**:
    - Handle `requirements.txt` dependencies.
    - Manage database migrations (`flask db upgrade`).
    - Start/Stop the Flask server.
- **Input**:
    - `python_app/`
    - `ai_orchestration/deployment/config/`
- **Output**:
    - `ai_orchestration/deployment/logs/`
    - Live Application URL

### 7. User Interface Agent
- **Persona**: UI/UX Designer / Creative Technologist
- **Role**: Refine the visual interface, improve usability, and implement dynamic visualizations.
- **Responsibilities**:
    - Design and refine Jinja2 templates (HTML/CSS).
    - ensure responsive and accessible layouts (Bootstrap).
    - Implement interactive elements (charts, process flow visualizations).
    - Collaborate with the Operator on "look and feel".
- **Input**:
    - `python_app/app/templates/`
    - `python_app/app/static/`
    - User Vision & Feedback
- **Output**:
    - Updated Templates & CSS
    - UX Mockups or Proposals (in `ai_orchestration/ux/`)

### 8. Configuration Management Agent
- **Persona**: Build & Release Manager / SCM Specialist
- **Role**: Maintain integrity of work products and manage baselines.
- **Responsibilities**:
    - Manage Version Control (Git) operations (add, commit, push).
    - Ensure configuration integrity and traceability of changes.
    - Manage releases and tagging.
- **Input**:
    - Staged Files
    - Commit Messages
- **Output**:
    - Versioned Codebase (Git Commit/Push)
    - Release Tags

