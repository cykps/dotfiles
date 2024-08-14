#!/bin/bash
#
# Setup script for all configuration

declare -r SCRIPT_DIR=$(cd $(dirname ${0}) && pwd)
declare -r REPO_ROOT=${SCRIPT_DIR}

# Zsh
/bin/bash ${REPO_ROOT}/setup-scripts/zsh.sh

# Neovim
/bin/bash ${REPO_ROOT}/setup-scripts/nvim.sh
