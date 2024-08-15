#!/bin/bash
#
# Setup script for Zsh config

set -euo pipefail

if [[ ! -v REPO_ROOT ]]; then
  declare SCRIPT_DIR="$(cd "$(dirname "${0}")" && pwd)"
  declare -r REPO_ROOT="$(dirname "${SCRIPT_DIR}")"
fi

echo "[INFO] Zsh-Setup: Start"

ln -s "${REPO_ROOT}/zsh/" "${HOME}/.config/zsh"
ln -s "${HOME}/.config/zsh/zshrc" "${HOME}/.zshrc"

echo "[INFO] Zsh-Setup: Completed"
