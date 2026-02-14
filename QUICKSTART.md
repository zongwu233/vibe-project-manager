# 快速开始指南

这是一份 5 分钟快速开始指南，帮助你立即开始使用 vibe-project-manager。

---

## 安装（1 分钟）

```bash
# 1. 进入项目目录
cd ~/vibe-project-manager

# 2. 执行安装脚本
./install.sh
```

安装脚本会自动创建符号链接到：
- **Claude Code**: `~/.claude/skills/vibe-project-manager`
- **OpenCode**: `~/.config/opencode/skills/vibe-project-manager`

安装完成后，在 AI 对话中输入：
```
使用 vibe-project-manager 技能
```

---

## 创建第一个项目（1 分钟）

```bash
# 1. 创建新项目
mkdir my-awesome-project
cd my-awesome-project

# 2. 初始化 vibe 项目
/vibe init
```

这会创建 `.vibe/` 目录及所有必要的文档文件。

---

## 创建第一个任务（30 秒）

```bash
/vibe create-task "实现首页布局"
```

任务文件已创建：`.vibe/tasks/task-001.md`

---

## 开始工作（30 秒）

```bash
/vibe letsgo
```

这会显示：
- 当前任务状态
- 推荐的 3 个下一步行动

---

## 更新进度（30 秒）

完成一些工作后：

```bash
/vibe update-state "完成首页头部导航栏的实现"
```

---

## 结束工作（30 秒）

```bash
/vibe welldone
```

这会引导你：
- 更新状态文件
- 记录完成内容
- 列出未解决问题

---

## 下次继续（30 秒）

```bash
/vibe letsgo
```

或者如果会话崩溃了：

```bash
/vibe aftercrash
```

---

## 常用命令速查

| 命令 | 用途 |
|------|------|
| `/vibe init` | 初始化项目 |
| `/vibe status` | 查看当前状态 |
| `/vibe create-task "任务名"` | 创建新任务 |
| `/vibe list-tasks` | 列出所有任务 |
| `/vibe letsgo` | 开始工作 |
| `/vibe welldone` | 结束工作 |
| `/vibe aftercrash` | 恢复会话 |
| `/vibe help` | 显示帮助 |

---

## 项目结构

```
my-awesome-project/
├── .vibe/
│   ├── design.md          # 你填写项目设计
│   ├── state.md           # 记录进度状态
│   ├── decisions.md       # 记录技术决策
│   ├── letsgo.md          # 启动指令（自动生成）
│   ├── welldone.md        # 结束流程（自动生成）
│   ├── aftercrash.md      # 恢复流程（自动生成）
│   ├── task-std.md        # 任务标准（自动生成）
│   └── tasks/
│       └── task-001.md    # 你的第一个任务
└── ...                    # 你的项目代码
```

---

## 核心工作流

```
1. /vibe init         → 初始化项目
2. /vibe create-task  → 创建任务
3. /vibe letsgo       → 开始工作
4. [开发你的功能...]
5. /vibe update-state → 更新进度
6. /vibe welldone     → 结束工作
7. [重复步骤 2-6]
```

---

## 下一步

- 📖 阅读完整文档：[README.md](./README.md)
- 💡 查看使用示例：[USAGE_EXAMPLE.md](./USAGE_EXAMPLE.md)
- 📁 了解目录结构：[STRUCTURE.md](./STRUCTURE.md)

---

## 常见问题

### Q: 安装后没有反应？

**A**: 确保你正确安装了 skills。尝试：
```
/vibe help
```

### Q: 忘记命令了怎么办？

**A**: 输入：
```
/vibe help
```

### Q: 如何删除项目？

**A**: 直接删除 `.vibe/` 目录即可：
```bash
rm -rf .vibe/
```

### Q: 可以在现有项目中使用吗？

**A**: 可以！在现有项目根目录执行：
```bash
/vibe init
```

---

## 需要帮助？

- 📖 完整文档：[README.md](./README.md)
- 💬 使用示例：[USAGE_EXAMPLE.md](./USAGE_EXAMPLE.md)
- 🐛 报告问题：在 GitHub 上提交 Issue

---

**开始你的 vibe coding 之旅吧！ 🚀**
