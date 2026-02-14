---
name: vibe
description: "Project scaffolding tool for creating and maintaining vibe coding project documentation structures. Provides comprehensive project state management, task management, and session management capabilities."
user_invocable: true
---

# Vibe Project Manager

## Description

Vibe Project Manager is a project scaffolding tool for creating and maintaining vibe coding project documentation structures. It provides comprehensive project state management, task management, and session management capabilities.

---

## Command List

### Basic Commands

| Command | Description | Example |
|---------|-------------|---------|
| `init` | Initialize project documentation structure | `/vibe init` |
| `status` | Read current project state | `/vibe status` |
| `update-state` | Update project state (append content) | `/vibe update-state "Complete user authentication module"` |
| `help` | Display help information | `/vibe help` |

### Task Management

| Command | Description | Example |
|---------|-------------|---------|
| `create-task` | Create new task (supports automatic breakdown into subtasks) | `/vibe create-task "Implement user authentication system"` |
| `list-tasks` | List all tasks | `/vibe list-tasks` |
| `update-task` | Update task content | `/vibe update-task 001 "New task description"` |
| `complete-task` | Mark task as completed | `/vibe complete-task 001` |

### Session Management

| Command | Description | Example |
|---------|-------------|---------|
| `letsgo` | Start workflow | `/vibe letsgo` |
| `welldone` | End workflow | `/vibe welldone` |
| `aftercrash` | Restore crashed session | `/vibe aftercrash` |

---

## Command Details

### 1. init - Initialize Project

**Function**: Create `.vibe/` directory and all necessary documentation files in the current project directory.

**Execution Steps**:
1. Check if current directory is already a vibe project (`.vibe/` directory exists)
2. If exists, prompt user to confirm re-initialization
3. Create directory structure
4. Create all template files

**Files Created**:
- `.vibe/design.md` - Project design document (empty template)
- `.vibe/state.md` - Project state (empty template)
- `.vibe/decisions.md` - Technical decisions (empty template)
- `.vibe/letsgo.md` - Startup instructions template
- `.vibe/welldone.md` - Completion flow template
- `.vibe/aftercrash.md` - Recovery flow template
- `.vibe/task-std.md` - Task standard format template
- `.vibe/tasks/` - Task directory

---

### 2. status - Read Project State

**Function**: Read and display the content of `.vibe/state.md`.

**Execution Steps**:
1. Check if `.vibe/state.md` exists
2. Read and display file content
3. If file doesn't exist or is empty, prompt user to initialize

---

### 3. update-state - Update Project State

**Function**: Append new state information to `.vibe/state.md`.

**Parameters**:
- `content` - Content to append (required)

**Execution Steps**:
1. Check if `.vibe/state.md` exists
2. Append content to the end of the file (with timestamp)
3. Format: `[YYYY-MM-DD HH:MM:SS] content`

---

### 4. create-task - Create New Task

**Function**: Create new task file. Supports two modes:

**Mode 1: Automatic Breakdown (Recommended)**
- Given a high-level goal, AI automatically breaks it down into multiple subtasks
- Suitable for complex features or large goals

**Mode 2: Single Task Creation**
- Create a specific task directly
- Suitable for clear, smaller scoped tasks

**Parameters**:
- `goal` - High-level goal or task title (required)
- `--single` - Optional flag to create a single task instead of automatic breakdown

**Execution Steps (Automatic Breakdown Mode)**:
1. Check if `.vibe/tasks/` directory exists
2. Understand the high-level goal provided by user
3. Analyze goal, identify key steps and dependencies
4. Break down goal into 3-7 logically reasonable subtasks
   - Each subtask should be independent and verifiable
   - Clear dependencies between subtasks
   - Subtasks arranged in execution order
5. Read existing task numbers, find maximum value
6. Create independent task files for each subtask (incrementing numbers)
7. Optional: Create a main task file referencing all subtasks
8. Display task breakdown summary

**Execution Steps (Single Task Mode)**:
1. Check for `--single` flag
2. Read existing task numbers, find maximum value
3. Create single task file (number + 1)
4. Use standard task format template

**Task Breakdown Principles**:
- **Appropriate Granularity**: Each subtask should be completed in 1-4 hours
- **Independence**: Minimize cross-dependencies between subtasks
- **Verifiable**: Each subtask has clear completion criteria
- **Logical Order**: Arrange subtasks in execution order

**Task File Format**:

Subtask format:
```markdown
## Goal

[Specific subtask goal, clear and well-defined scope]

## Input

- Existing files or resources
- Prerequisite tasks (reference dependent task numbers, e.g., depends on task-001)
- Configuration or environment requirements

## Output

Required files, modifications, or deliverables:
- List of created/modified files
- Specific metrics to achieve
- Verifiable results

## Completion Criteria

What state counts as completed:
- Feature tests pass
- Code review passes
- Documentation updated
- Related tasks linked
```

Main task format (optional):
```markdown
## Goal

[High-level goal description]

## Input

- User requirements
- Project design document (.vibe/design.md)
- Related technical constraints

## Output

- List of broken down subtasks
- Overall progress tracking
- Final deliverables

## Completion Criteria

- All subtasks completed
- Overall feature tests pass
- User acceptance passes

## Subtask Checklist

- [ ] task-002 - [Subtask title]
- [ ] task-003 - [Subtask title]
- [ ] task-004 - [Subtask title]
```

---

### 5. list-tasks - List All Tasks

**Function**: List all task files and their status.

**Execution Steps**:
1. Read `.vibe/tasks/` directory
2. Sort by task number
3. Display task titles and completion status
4. If task file contains completed content in "## Completion Criteria" section, mark as completed

---

### 6. update-task - Update Task

**Function**: Update the content of a specified task.

**Parameters**:
- `task_id` - Task number (required)
- `content` - New content (required)

**Execution Steps**:
1. Check if task file exists
2. Update task content
3. Preserve original format and structure

---

### 7. complete-task - Mark Task Completed

**Function**: Mark a specified task as completed.

**Parameters**:
- `task_id` - Task number (required)

**Execution Steps**:
1. Check if task file exists
2. Add completion marker to task file
3. Add completion timestamp to "## Completion Criteria" section

---

### 8. letsgo - Start Workflow

**Function**: Start work according to instructions in `letsgo.md`.

**Execution Steps**:
1. Read `.vibe/letsgo.md`
2. Execute according to instructions:
   - Read `.vibe/design.md`
   - Read `.vibe/state.md`
   - Read `.vibe/decisions.md`
3. Recap current task status in no more than 10 lines
4. List 3 recommended actions

---

### 9. welldone - End Workflow

**Function**: End work according to instructions in `welldone.md`.

**Execution Steps**:
1. Read `.vibe/welldone.md`
2. Execute according to instructions:
   - Update `.vibe/state.md`
   - Mark completed content
   - Record current assumptions
   - List unresolved issues

---

### 10. aftercrash - Restore Crashed Session

**Function**: Restore session according to instructions in `aftercrash.md`.

**Execution Steps**:
1. Read `.vibe/aftercrash.md`
2. Execute according to instructions:
   - Read `.vibe/state.md`
   - Confirm understanding of current progress
   - Explain how to continue

---

## Project Structure

Project structure after initialization:

```
project-root/
├── .vibe/
│   ├── design.md          # North Star - stable architecture and design constraints
│   ├── state.md           # Progress/checkpoint - frequently updated work state
│   ├── decisions.md       # Key conclusions - irreversible technical decisions
│   ├── letsgo.md          # Startup instructions
│   ├── welldone.md        # Completion flow
│   ├── aftercrash.md      # Recovery flow
│   ├── task-std.md        # Task standard format template
│   └── tasks/             # Task directory
│       ├── task-001.md
│       ├── task-002.md
│       └── ...
└── ...                    # Other project files
```

---

## File Responsibilities

| File | Agent Editable | Purpose |
|------|---------------|---------|
| design.md | ❌ | North Star - stable architecture and design constraints |
| state.md | ✅ | Progress/checkpoint - frequently updated work state |
| decisions.md | ⚠️ | Key conclusions - irreversible technical decisions (only add new decisions) |
| tasks/task-xxx.md | ✅ | Executable tasks - specific development tasks |
| letsgo.md | ✅ | Startup instructions - workflow when starting work |
| welldone.md | ✅ | Completion flow - workflow when ending work |
| aftercrash.md | ✅ | Recovery flow - recovery operations after session crash |

---

## Important Principles

### North Star Principle
- `design.md` is the project's North Star
- ❌ Agent cannot modify
- All development work must follow this design

### Checkpoint Principle
- `state.md` is the work checkpoint
- ✅ Must update when ending work
- True state exists only in local files

### Standard Principle
- All `task-xxx.md` must follow 4-section format
- Goal, input, output, completion criteria - all required

### Recoverable Principle
- `aftercrash.md` ensures quick recovery after session crash
- All state recorded in `state.md`

---

## Usage Examples

### Initialize New Project

```bash
cd /path/to/your/project
/vibe init
```

### Create First Task

```bash
/vibe create-task "Initialize project infrastructure"
```

### Start Work

```bash
/vibe letsgo
```

### Update State

```bash
/vibe update-state "Complete project directory structure creation"
```

### End Work

```bash
/vibe welldone
```

---

## Notes

1. **First Use**: Must execute `/vibe init` in project root directory to initialize
2. **State Updates**: Execute `/vibe welldone` before ending work to update state
3. **Task Numbers**: Task numbers auto-increment, no manual specification needed
4. **Document Format**: Strictly follow template format for consistency
5. **Permission Control**: `design.md` is the unmodifiable North Star document

---

## Troubleshooting

### Issue: .vibe directory not found

**Cause**: Project not initialized

**Solution**:
```bash
/vibe init
```

### Issue: state.md is empty

**Cause**: State never updated

**Solution**:
```bash
/vibe update-state "Start project development"
```

### Issue: Task creation failed

**Cause**: `.vibe/tasks/` directory doesn't exist or insufficient permissions

**Solution**:
```bash
# Check if directory exists
ls -la .vibe/tasks/
# If doesn't exist, re-initialize
/vibe init
```

---

## Version History

- v1.0.0 - Initial version
