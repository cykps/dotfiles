#!/bin/bash
#
# Setup script for Zsh config

set -euo pipefail

if [[ ! -v REPO_ROOT ]]; then
  declare SCRIPT_DIR="$(cd "$(dirname "${0}")" && pwd)"
  declare -r REPO_ROOT="$(dirname "${SCRIPT_DIR}")"
fi

echo "[INFO] Zsh-Setup: Start"

if [[ ! -d "${HOME}/.config" ]]; then
  mkdir "${HOME}/.config"
fi

ln -s "${REPO_ROOT}/zsh/" "${HOME}/.config/zsh"
ln -s "${HOME}/.config/zsh/zshrc" "${HOME}/.zshrc"

declare LOCAL_CONFIG_DIR="${REPO_ROOT}/zsh/local"
if [[ ! -f "${LOCAL_CONFIG_DIR}" ]]; then
  cp -r "${REPO_ROOT}/zsh/local-template" "${LOCAL_CONFIG_DIR}"
fi

echo "[INFO] Zsh-Setup: Completed"
