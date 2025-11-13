#!/bin/zsh

# 一次性设置当前仓库的 git 用户名和邮箱
git_sahara_config() {
  local name email
  name=${1:-"ryan.alexander.zhang"}
  email=${2:-"ryan.alexander.zhang@gmail.com"}
  git config user.name "$name"
  git config user.email "$email"

  echo "Configured git user.name: $(git config user.name)"
  echo "Configured git user.email: $(git config user.email)"
}

git_sahara_config "$1" "$2"