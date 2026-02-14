# Vibe Project Manager

Vibe Coding 项目管理脚手架工具，用于创建和维护项目文档结构。

---

## 功能特性

- ✅ 自动初始化项目文档结构
- ✅ 项目状态管理（读取/更新）
- ✅ 任务管理（创建/更新/完成）
- ✅ 会话管理（letsgo/welldone/aftercrash）
- ✅ 标准化的文档格式
- ✅ 完整的项目进度跟踪

---

## 安装

### 方法一：复制到 OpenHands Skills 目录

```bash
# 复制整个目录到 OpenHands skills 目录
cp -r ~/vibe-project-manager ~/.opencode/skills/vibe-project-manager
```

### 方法二：符号链接（推荐，方便更新）

```bash
# 创建符号链接
ln -s ~/vibe-project-manager ~/.opencode/skills/vibe-project-manager
```

### 验证安装

安装后，在 AI 对话中输入：

```
使用 vibe-project-manager 技能
```

或者直接使用命令：

```
/vibe help
```

---

## 快速开始

### 1. 初始化项目

在你的项目根目录执行：

```
/vibe init
```

这会创建 `.vibe/` 目录及所有必要的文档文件。

### 2. 创建任务

```
/vibe create-task "初始化项目基础结构"
```

### 3. 开始工作

```
/vibe letsgo
```

### 4. 更新状态

```
/vibe update-state "完成项目目录结构的创建"
```

### 5. 结束工作

```
/vibe welldone
```

---

## 项目结构

初始化后的项目结构：

```
project-root/
├── .vibe/
│   ├── design.md          # 项目设计文档（北极星）
│   ├── state.md           # 项目状态（断点）
│   ├── decisions.md       # 技术决策
│   ├── letsgo.md          # 启动指令
│   ├── welldone.md        # 结束流程
│   ├── aftercrash.md      # 恢复流程
│   ├── task-std.md        # 任务标准格式
│   └── tasks/             # 任务目录
│       ├── task-001.md
│       ├── task-002.md
│       └── ...
└── ...
```

---

## 命令参考

### 基本命令

| 命令 | 描述 |
|------|------|
| `init` | 初始化项目文档结构 |
| `status` | 读取当前项目状态 |
| `update-state` | 更新项目状态 |
| `help` | 显示帮助信息 |

### 任务管理

| 命令 | 描述 |
|------|------|
| `create-task` | 创建新任务 |
| `list-tasks` | 列出所有任务 |
| `update-task` | 更新任务内容 |
| `complete-task` | 标记任务完成 |

### 会话管理

| 命令 | 描述 |
|------|------|
| `letsgo` | 启动工作流程 |
| `welldone` | 结束工作流程 |
| `aftercrash` | 恢复崩溃会话 |

---

## 工作流程

### 1. 项目初始化

```
cd /path/to/your/project
/vibe init
```

### 2. 日常工作

```
# 开始工作
/vibe letsgo

# 创建任务
/vibe create-task "实现登录功能"

# 更新状态
/vibe update-state "完成用户认证模块"

# 结束工作
/vibe welldone
```

### 3. 会话恢复

如果 AI 会话崩溃：

```
/vibe aftercrash
```

---

## 核心原则

### 北极星原则
- `design.md` 是项目的北极星
- ❌ Agent 不可修改
- 所有开发工作必须遵循此设计

### 断点原则
- `state.md` 是工作断点
- ✅ 每次结束工作必须更新
- 真实状态只存在于本地文件

### 标准原则
- 所有 `task-xxx.md` 必须遵循 4 段式格式
- 目标、输入、输出、完成条件缺一不可

### 可恢复原则
- `aftercrash.md` 确保会话崩溃后快速恢复
- 所有状态记录在 `state.md`

---

## 文件说明

### design.md
- **职责**：北极星 - 稳定架构和设计约束
- **可修改**：❌
- **用途**：项目设计的核心文档，不应随意修改

### state.md
- **职责**：进度/断点 - 频繁更新的工作状态
- **可修改**：✅
- **用途**：记录项目当前进度、假设和问题

### decisions.md
- **职责**：关键结论 - 不可逆的技术决策
- **可修改**：⚠️（仅添加新决策）
- **用途**：记录重要的技术决策历史

### tasks/task-xxx.md
- **职责**：可执行任务 - 具体的开发任务
- **可修改**：✅
- **用途**：具体任务的详细描述和完成标准

---

## 故障排查

### 问题：找不到 .vibe 目录

**原因**：项目未初始化

**解决方案**：
```
/vibe init
```

### 问题：state.md 为空

**原因**：从未更新过状态

**解决方案**：
```
/vibe update-state "开始项目开发"
```

### 问题：任务创建失败

**原因**：`.vibe/tasks/` 目录不存在或权限不足

**解决方案**：
```
# 检查目录是否存在
ls -la .vibe/tasks/

# 如果不存在，重新初始化
/vibe init
```

---

## 更新日志

### v1.0.0 (2025-02-14)
- ✅ 初始版本发布
- ✅ 实现核心功能：初始化、状态管理、任务管理、会话管理
- ✅ 标准化文档格式
- ✅ 完整的项目结构模板

---

## 贡献

欢迎提交 Issue 和 Pull Request！

---

## 许可证

MIT License
