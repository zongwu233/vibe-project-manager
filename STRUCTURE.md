# 目录结构说明

```
vibe-project-manager/
├── README.md                    # 项目说明文档
├── install.sh                   # 安装脚本
├── skill.md                     # Skills 描述文件（核心）
└── templates/                   # 模板文件目录
    ├── design.md                # 项目设计文档模板
    ├── state.md                 # 项目状态模板
    ├── decisions.md             # 技术决策模板
    ├── letsgo.md                # 启动指令模板
    ├── welldone.md              # 结束流程模板
    ├── aftercrash.md            # 恢复流程模板
    └── task-std.md              # 任务标准格式模板
```

## 文件说明

### 核心文件

- **skill.md** - Skills 的核心描述文件，定义了所有命令和功能
- **README.md** - 用户文档，包含安装、使用说明和命令参考
- **install.sh** - 一键安装脚本

### 模板文件

所有模板文件存储在 `templates/` 目录中，用于初始化项目时创建对应的文档。

- **design.md** - 项目设计文档的空模板
- **state.md** - 项目状态的空模板
- **decisions.md** - 技术决策的空模板
- **letsgo.md** - 启动工作流程的指令模板
- **welldone.md** - 结束工作流程的指令模板
- **aftercrash.md** - 恢复会话的指令模板
- **task-std.md** - 任务标准格式模板

## 使用方式

### 1. 安装

```bash
cd ~/vibe-project-manager
./install.sh
```

安装脚本会自动创建符号链接到两个位置：
- `~/.claude/skills/vibe-project-manager`（Claude Code）
- `~/.config/opencode/skills/vibe-project-manager`（OpenCode）

### 2. 使用

安装后，在 AI 对话中：

```
使用 vibe-project-manager 技能
```

或直接使用命令：

```
/vibe help
```

### 3. 初始化项目

```bash
cd /path/to/your/project
/vibe init
```

## 更新

由于使用符号链接安装，更新只需修改原目录的文件即可：

```bash
cd ~/vibe-project-manager
# 修改文件后，Claude Code 和 OpenCode 会自动读取最新版本
```

## 安装位置

- **Claude Code**: `~/.claude/skills/vibe-project-manager`
- **OpenCode**: `~/.config/opencode/skills/vibe-project-manager`

两者都是符号链接，指向 `~/vibe-project-manager` 目录。
