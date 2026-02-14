# 更新日志

本文档记录 vibe-project-manager 的所有重要变更。

格式基于 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.0.0/)，
版本号遵循 [语义化版本](https://semver.org/lang/zh-CN/)。

---

## [1.1.0] - 2025-02-14

### 新增
- ✅ 任务自动拆解功能
- ✅ 给定高层目标，AI 自动拆解为 3-7 个逻辑合理的子任务
- ✅ 子任务按执行顺序排列，有清晰的依赖关系
- ✅ 支持单任务模式（`--single` 标志）
- ✅ 可选的主任务文件，用于组织和跟踪所有子任务
- ✅ 任务拆解原则文档

### 改进
- 📝 更新所有示例，展示自动拆解功能
- 📝 在 README 中添加任务拆解使用说明
- 📝 添加任务粒度、独立性、可验证性指导

---

## [1.0.1] - 2025-02-14

### 新增
- ✅ 添加英文 README.md
- ✅ 保留中文文档为 README.zh-CN.md
- ✅ 支持同时安装到 Claude Code 和 OpenCode
- ✅ 更新安装脚本，支持双平台安装

### 变更
- 🔄 安装目录从 `~/.opencode/skills/` 更新为：
  - Claude Code: `~/.claude/skills/`
  - OpenCode: `~/.config/opencode/skills/`
- 🔄 安装脚本自动创建符号链接到两个平台

### 改进
- 📝 更新所有文档，说明双平台支持
- 📝 在 README 中添加语言切换链接

---

## [1.0.0] - 2025-02-14

### 新增
- ✅ 核心功能：项目初始化（`init` 命令）
- ✅ 状态管理：读取和更新项目状态（`status`, `update-state` 命令）
- ✅ 任务管理：创建、列出、更新、完成任务（`create-task`, `list-tasks`, `update-task`, `complete-task` 命令）
- ✅ 会话管理：启动工作、结束工作、恢复会话（`letsgo`, `welldone`, `aftercrash` 命令）
- ✅ 标准化的文档结构（`.vibe/` 目录）
- ✅ 7 个核心模板文件：
  - `design.md` - 项目设计文档
  - `state.md` - 项目状态
  - `decisions.md` - 技术决策
  - `letsgo.md` - 启动指令
  - `welldone.md` - 结束流程
  - `aftercrash.md` - 恢复流程
  - `task-std.md` - 任务标准格式
- ✅ 自动任务编号（递增）
- ✅ 一键安装脚本（`install.sh`）
- ✅ 完整的用户文档：
  - README.md - 项目说明和完整命令参考
  - QUICKSTART.md - 5 分钟快速开始指南
  - USAGE_EXAMPLE.md - 详细使用示例
  - STRUCTURE.md - 目录结构说明
- ✅ 任务示例文件
- ✅ `.gitignore` 文件

### 设计原则
- **北极星原则**：`design.md` 是项目的北极星，不可随意修改
- **断点原则**：`state.md` 是工作断点，每次结束工作必须更新
- **标准原则**：所有任务必须遵循 4 段式格式
- **可恢复原则**：`aftercrash.md` 确保会话崩溃后快速恢复

---

## [未来计划]

### [1.1.0] - 计划中
- [ ] 任务依赖关系管理
- [ ] 任务优先级设置
- [ ] 任务标签和分类
- [ ] 状态可视化（进度条、统计图表）
- [ ] 导出/导入项目状态
- [ ] 团队协作功能（多人共享状态）

### [1.2.0] - 计划中
- [ ] 任务模板库
- [ ] 自动生成日报/周报
- [ ] 集成 Git 集成（自动关联 commit）
- [ ] 时间追踪功能
- [ ] 任务完成时间统计

### [2.0.0] - 远期计划
- [ ] Web UI 界面
- [ ] 移动端应用
- [ ] 多项目管理
- [ ] 数据分析和报表
- [ ] AI 智能任务建议

---

## 版本说明

- **主版本号**：不兼容的 API 变更
- **次版本号**：向下兼容的功能性新增
- **修订号**：向下兼容的问题修正

---

## 贡献指南

欢迎贡献！如果你想添加新功能或修复 bug：

1. Fork 本项目
2. 创建特性分支（`git checkout -b feature/AmazingFeature`）
3. 提交更改（`git commit -m 'Add some AmazingFeature'`）
4. 推送到分支（`git push origin feature/AmazingFeature`）
5. 开启 Pull Request

---

## 许可证

本项目采用 MIT 许可证 - 详见 LICENSE 文件
