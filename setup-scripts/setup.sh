#!/bin/bash
#
# Setup script for all configuration

set -euo pipefail

declare SCRIPT_DIR="$(cd "$(dirname "${0}")" && pwd)"
declare -r REPO_ROOT="$(dirname "${SCRIPT_DIR}")"

# Zsh
(source "${REPO_ROOT}/setup-scripts/zsh.sh")

# Neovim
(source "${REPO_ROOT}/setup-scripts/nvim.sh")
