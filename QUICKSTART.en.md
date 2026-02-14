# Quick Start Guide

A 5-minute quick start guide to help you get started with vibe-project-manager immediately.

---

## Installation (1 minute)

```bash
# 1. Navigate to the project directory
cd ~/vibe-project-manager

# 2. Run the installation script
./install.sh
```

The installation script will automatically create symbolic links to:
- **Claude Code**: `~/.claude/skills/vibe-project-manager`
- **OpenCode**: `~/.config/opencode/skills/vibe-project-manager`

After installation, in your AI conversation, type:
```
Use vibe-project-manager skill
```

---

## Create Your First Project (1 minute)

```bash
# 1. Create a new project
mkdir my-awesome-project
cd my-awesome-project

# 2. Initialize vibe project
/vibe init
```

This will create the `.vibe/` directory and all necessary documentation files.

---

## Create Your First Task (30 seconds)

```bash
/vibe create-task "Implement homepage layout"
```

Task file created: `.vibe/tasks/task-001.md`

---

## Start Working (30 seconds)

```bash
/vibe letsgo
```

This will display:
- Current task status
- Next 3 recommended actions

---

## Update Progress (30 seconds)

After completing some work:

```bash
/vibe update-state "Complete homepage header navigation"
```

---

## End Work (30 seconds)

```bash
/vibe welldone
```

This will guide you to:
- Update state file
- Record completed content
- List unresolved issues

---

## Resume Work (30 seconds)

Next time you work:

```bash
/vibe letsgo
```

Or if the session crashed:

```bash
/vibe aftercrash
```

---

## Quick Command Reference

| Command | Purpose |
|---------|---------|
| `/vibe init` | Initialize project |
| `/vibe status` | View current state |
| `/vibe create-task "Task name"` | Create new task |
| `/vibe list-tasks` | List all tasks |
| `/vibe letsgo` | Start work |
| `/vibe welldone` | End work |
| `/vibe aftercrash` | Resume session |
| `/vibe help` | Display help |

---

## Project Structure

```
my-awesome-project/
├── .vibe/
│   ├── design.md          # You fill in project design
│   ├── state.md           # Record progress state
│   ├── decisions.md       # Record technical decisions
│   ├── letsgo.md          # Start instruction (auto-generated)
│   ├── welldone.md        # End workflow (auto-generated)
│   ├── aftercrash.md      # Recovery workflow (auto-generated)
│   ├── task-std.md        # Task standard (auto-generated)
│   └── tasks/
│       └── task-001.md    # Your first task
└── ...                    # Your project code
```

---

## Core Workflow

```
1. /vibe init         → Initialize project
2. /vibe create-task  → Create task
3. /vibe letsgo       → Start working
4. [Develop your feature...]
5. /vibe update-state → Update progress
6. /vibe welldone     → End work
7. [Repeat steps 2-6]
```

---

## Next Steps

- 📖 Read full documentation: [README.md](./README.md)
- 💡 View usage examples: [USAGE_EXAMPLE.md](./USAGE_EXAMPLE.md)
- 📁 Understand directory structure: [STRUCTURE.md](./STRUCTURE.md)

---

## Common Questions

### Q: Nothing happens after installation?

**A**: Make sure you installed the skill correctly. Try:
```
/vibe help
```

### Q: Forgot the commands?

**A**: Type:
```
/vibe help
```

### Q: How to delete a project?

**A**: Just delete the `.vibe/` directory:
```bash
rm -rf .vibe/
```

### Q: Can I use it in existing projects?

**A**: Yes! In your existing project root, run:
```bash
/vibe init
```

---

## Need Help?

- 📖 Full documentation: [README.md](./README.md)
- 🌐 中文文档: [README.zh-CN.md](./README.zh-CN.md)
- 💬 Usage examples: [USAGE_EXAMPLE.md](./USAGE_EXAMPLE.md)
- 🐛 Report issues: Submit an Issue on GitHub

---

**Start your vibe coding journey! 🚀**
