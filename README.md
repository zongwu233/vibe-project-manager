# Vibe Project Manager

A project management scaffolding tool for Vibe Coding that creates and maintains project documentation structure.

---

## Features

- ✅ Automatic initialization of project documentation structure
- ✅ Project state management (read/update)
- ✅ Task management (create/update/complete)
- ✅ Session management (letsgo/welldone/aftercrash)
- ✅ Standardized documentation format
- ✅ Complete project progress tracking

---

## Installation

### Option 1: Use the installation script (recommended)

```bash
cd ~/vibe-project-manager
./install.sh
```

The script will automatically install the skill to both:
- `~/.claude/skills/vibe-project-manager` (Claude Code)
- `~/.config/opencode/skills/vibe-project-manager` (OpenCode)

### Option 2: Manual installation

For Claude Code:
```bash
cp -r ~/vibe-project-manager ~/.claude/skills/vibe-project-manager
```

For OpenCode:
```bash
cp -r ~/vibe-project-manager ~/.config/opencode/skills/vibe-project-manager
```

### Option 3: Symbolic link (recommended for development)

```bash
# For Claude Code
ln -s ~/vibe-project-manager ~/.claude/skills/vibe-project-manager

# For OpenCode
ln -s ~/vibe-project-manager ~/.config/opencode/skills/vibe-project-manager
```

### Verify Installation

After installation, in your AI conversation, type:

```
Use vibe-project-manager skill
```

Or use commands directly:

```
/vibe help
```

---

## Quick Start

### 1. Initialize Project

In your project root directory:

```
/vibe init
```

This will create the `.vibe/` directory and all necessary documentation files.

### 2. Create Task

```
/vibe create-task "Initialize project structure"
```

### 3. Start Work

```
/vibe letsgo
```

### 4. Update State

```
/vibe update-state "Complete project directory structure"
```

### 5. End Work

```
/vibe welldone
```

---

## Project Structure

After initialization:

```
project-root/
├── .vibe/
│   ├── design.md          # Project design document (North Star)
│   ├── state.md           # Project state (checkpoint)
│   ├── decisions.md       # Technical decisions
│   ├── letsgo.md          # Start instruction
│   ├── welldone.md        # End workflow
│   ├── aftercrash.md      # Recovery workflow
│   ├── task-std.md        # Task standard format
│   └── tasks/             # Tasks directory
│       ├── task-001.md
│       ├── task-002.md
│       └── ...
└── ...
```

---

## Command Reference

### Basic Commands

| Command | Description |
|---------|-------------|
| `init` | Initialize project documentation structure |
| `status` | Read current project state |
| `update-state` | Update project state |
| `help` | Display help information |

### Task Management

| Command | Description |
|---------|-------------|
| `create-task` | Create new task |
| `list-tasks` | List all tasks |
| `update-task` | Update task content |
| `complete-task` | Mark task as completed |

### Session Management

| Command | Description |
|---------|-------------|
| `letsgo` | Start workflow |
| `welldone` | End workflow |
| `aftercrash` | Recover crashed session |

---

## Workflow

### 1. Project Initialization

```
cd /path/to/your/project
/vibe init
```

### 2. Daily Work

```
# Start work
/vibe letsgo

# Create task
/vibe create-task "Implement login feature"

# Update state
/vibe update-state "Complete user authentication module"

# End work
/vibe welldone
```

### 3. Session Recovery

If AI session crashes:

```
/vibe aftercrash
```

---

## Core Principles

### North Star Principle
- `design.md` is the North Star of the project
- ❌ Agent cannot modify
- All development work must follow this design

### Checkpoint Principle
- `state.md` is the work checkpoint
- ✅ Must update at the end of each work session
- True state only exists in local files

### Standard Principle
- All `task-xxx.md` must follow 4-section format
- Goal, Input, Output, Completion conditions are indispensable

### Recoverable Principle
- `aftercrash.md` ensures quick recovery after session crash
- All state records are in `state.md`

---

## File Descriptions

### design.md
- **Role**: North Star - Stable architecture and design constraints
- **Editable**: ❌
- **Purpose**: Core document of project design, should not be modified arbitrarily

### state.md
- **Role**: Progress/Checkpoint - Frequently updated work status
- **Editable**: ✅
- **Purpose**: Record current progress, assumptions, and issues

### decisions.md
- **Role**: Key conclusions - Irreversible technical decisions
- **Editable**: ⚠️ (Add new decisions only)
- **Purpose**: Record important technical decision history

### tasks/task-xxx.md
- **Role**: Executable tasks - Specific development tasks
- **Editable**: ✅
- **Purpose**: Detailed description and completion criteria for specific tasks

---

## Troubleshooting

### Issue: .vibe directory not found

**Cause**: Project not initialized

**Solution**:
```
/vibe init
```

### Issue: state.md is empty

**Cause**: State never updated

**Solution**:
```
/vibe update-state "Start project development"
```

### Issue: Task creation failed

**Cause**: `.vibe/tasks/` directory does not exist or insufficient permissions

**Solution**:
```
# Check if directory exists
ls -la .vibe/tasks/

# Reinitialize if not exists
/vibe init
```

---

## Documentation

- **English**: [README.md](./README.md) (This file)
- **中文文档**: [README.zh-CN.md](./README.zh-CN.md)
- **Quick Start**: [QUICKSTART.en.md](./QUICKSTART.en.md) | [QUICKSTART.md](./QUICKSTART.md)
- **Usage Examples**: [USAGE_EXAMPLE.md](./USAGE_EXAMPLE.md)
- **Structure**: [STRUCTURE.md](./STRUCTURE.md)

---

## Changelog

### v1.0.1 (2025-02-14)
- ✅ Add English README.md
- ✅ Keep Chinese documentation as README.zh-CN.md
- ✅ Support simultaneous installation to Claude Code and OpenCode
- ✅ Update installation script to support dual platforms

### v1.0.0 (2025-02-14)
- ✅ Initial release
- ✅ Implement core features: initialization, state management, task management, session management
- ✅ Standardized documentation format
- ✅ Complete project structure template

---

## Contributing

Issues and Pull Requests are welcome!

---

## License

MIT License
