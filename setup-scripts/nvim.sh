#!/bin/bash
#
# Setup script for Neovim config

set -euo pipefail

if [[ ! -v REPO_ROOT ]]; then
  declare SCRIPT_DIR="$(cd "$(dirname "${0}")" && pwd)"
  declare -r REPO_ROOT="$(dirname "${SCRIPT_DIR}")"
fi

echo "[INFO] Nvim-Setup: Start"

ln -s "${REPO_ROOT}/nvim" "${HOME}/.config/"

echo "[INFO] Nvim-Setup: Completed"
