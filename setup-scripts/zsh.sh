#!/bin/bash
#
# Setup script for Zsh config

if [[ -z ${REPO_ROOT} ]]; then
  declare -r SCRIPT_DIR=$(cd $(dirname ${0}) && pwd)
  declare -r REPO_ROOT=$(dirname ${SCRIPT_DIR})
fi

ln -s ${REPO_ROOT}/zsh/ ${HOME}/.config/zsh
ln -s ${HOME}/.config/zsh/zshrc ${HOME}/.zshrc
