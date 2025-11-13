#!/usr/bin/env bash
set -euo pipefail

NAMESPACE="demo"
PATTERN="git-pvc"

tkn pr delete --all -n ${NAMESPACE}

# 列出 demo 命名空间中名字包含 git-pvc 的 PVC 并删除
kubectl get pvc -n "${NAMESPACE}" \
  --no-headers \
  | awk -v p="${PATTERN}" '$1 ~ p {print $1}' \
  | xargs -r kubectl delete pvc -n "${NAMESPACE}"