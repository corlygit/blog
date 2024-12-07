#!/bin/bash

# 获取当前分支名称
current_branch=$(git rev-parse --abbrev-ref HEAD)

echo "current branch: ${current_branch}"

# 去掉“feature-”后剩下的内容
commit_message=${current_branch#feature-}
echo "commit message: $commit_message"

# 提交代码并推送到远程仓库
git add .
git commit -m "$commit_message"
git push origin "$current_branch"

