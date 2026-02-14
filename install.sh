#!/bin/bash

# Vibe Project Manager 安装脚本
# 同时安装到 Claude Code 和 OpenCode 的 skills 目录

set -e

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 打印带颜色的消息
print_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# 获取脚本所在目录
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Claude Code skills 目录
CLAUDE_SKILLS_DIR="$HOME/.claude/skills"

# OpenCode skills 目录
OPencode_SKILLS_DIR="$HOME/.config/opencode/skills"

# 安装到指定目录
install_to() {
    local skills_dir="$1"
    local platform_name="$2"

    if [ ! -d "$skills_dir" ]; then
        print_warn "$platform_name skills 目录不存在: $skills_dir"
        print_info "尝试创建目录..."
        mkdir -p "$skills_dir"
    fi

    local target_dir="$skills_dir/vibe-project-manager"

    # 检查目标目录是否已存在
    if [ -d "$target_dir" ] || [ -L "$target_dir" ]; then
        print_warn "$platform_name 目标目录已存在: $target_dir"
        rm -rf "$target_dir"
        print_info "删除旧目录..."
    fi

    # 创建符号链接
    print_info "为 $platform_name 创建符号链接..."
    ln -s "$SCRIPT_DIR" "$target_dir"

    print_info "$platform_name 安装成功: $target_dir"
}

# 安装到 Claude Code
echo ""
print_info "安装到 Claude Code..."
install_to "$CLAUDE_SKILLS_DIR" "Claude Code"

# 安装到 OpenCode
echo ""
print_info "安装到 OpenCode..."
install_to "$OPencode_SKILLS_DIR" "OpenCode"

# 完成
echo ""
print_info "════════════════════════════════════════"
print_info "安装完成！"
print_info "════════════════════════════════════════"
echo ""
print_info "实际位置: $SCRIPT_DIR"
echo ""
print_info "安装位置:"
echo "  Claude Code: $CLAUDE_SKILLS_DIR/vibe-project-manager"
echo "  OpenCode:    $OPencode_SKILLS_DIR/vibe-project-manager"
echo ""
print_info "使用方法："
echo "  在 AI 对话中输入：使用 vibe-project-manager 技能"
echo "  或者直接使用命令：/vibe help"
echo ""
print_warn "注意："
echo "  - 请确保 Claude Code 或 OpenCode 已正确配置"
echo "  - 使用符号链接安装，更新原目录即可同步"
echo "  - 如果遇到问题，请检查对应平台的 skills 目录配置"
echo ""
