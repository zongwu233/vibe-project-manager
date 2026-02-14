#!/bin/bash

# Vibe Project Manager 安装脚本

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

# 检查 OpenHands skills 目录
OPENHANDS_SKILLS_DIR="$HOME/.opencode/skills"

if [ ! -d "$OPENHANDS_SKILLS_DIR" ]; then
    print_warn "OpenHands skills 目录不存在: $OPENHANDS_SKILLS_DIR"
    print_info "尝试创建目录..."
    mkdir -p "$OPENHANDS_SKILLS_DIR"
fi

# 目标目录
TARGET_DIR="$OPENHANDS_SKILLS_DIR/vibe-project-manager"

# 检查目标目录是否已存在
if [ -d "$TARGET_DIR" ]; then
    print_warn "目标目录已存在: $TARGET_DIR"
    read -p "是否要覆盖？(y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        print_info "取消安装"
        exit 0
    fi
    print_info "删除旧目录..."
    rm -rf "$TARGET_DIR"
fi

# 创建符号链接
print_info "创建符号链接..."
ln -s "$SCRIPT_DIR" "$TARGET_DIR"

print_info "安装完成！"
echo ""
print_info "安装位置: $TARGET_DIR"
print_info "实际位置: $SCRIPT_DIR"
echo ""
print_info "使用方法："
echo "  在 AI 对话中输入：使用 vibe-project-manager 技能"
echo "  或者直接使用命令：/vibe help"
echo ""
print_warn "注意：请确保 OpenCode 已正确配置并能够访问 skills 目录"
