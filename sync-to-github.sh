#!/bin/bash

# 圣诞节抽奖项目 - 自动同步脚本
# 用于同步本地文件到 GitHub firefly-xmas 仓库

echo "🎄 圣诞节抽奖项目 - GitHub 同步工具"
echo "=================================="

# 颜色定义
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 检查 Git 是否安装
if ! command -v git &> /dev/null; then
    echo -e "${RED}✗ Git 未安装${NC}"
    exit 1
fi

# 设置 Git 用户信息
git config user.email "moongrant@github.com"
git config user.name "moongrant"

# 获取当前分支
BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)

if [ -z "$BRANCH" ]; then
    echo -e "${RED}✗ 未检测到 Git 仓库${NC}"
    exit 1
fi

echo -e "${YELLOW}当前分支: $BRANCH${NC}"

# 添加所有更改的文件
echo "正在暂存文件..."
git add .

# 检查是否有需要提交的更改
if git diff --cached --quiet; then
    echo -e "${YELLOW}✓ 没有检测到文件更改${NC}"
    exit 0
fi

# 提示输入提交信息
echo ""
echo "请输入提交信息 (按 Enter 使用默认信息):"
read -p "提交信息: " COMMIT_MSG

# 如果没有输入，使用默认消息
if [ -z "$COMMIT_MSG" ]; then
    COMMIT_MSG="update: 更新圣诞节抽奖程序文件 $(date '+%Y-%m-%d %H:%M:%S')"
fi

# 提交更改
echo "正在提交更改..."
git commit -m "$COMMIT_MSG"

if [ $? -ne 0 ]; then
    echo -e "${RED}✗ 提交失败${NC}"
    exit 1
fi

# 推送到 GitHub
echo "正在推送到 GitHub..."
git push origin $BRANCH

if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓ 成功同步到 GitHub!${NC}"
    echo ""
    echo "查看更新: https://github.com/moongrant/firefly-xmas"
else
    echo -e "${RED}✗ 推送失败，请检查网络连接和权限${NC}"
    exit 1
fi
