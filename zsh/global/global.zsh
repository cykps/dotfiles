local GLOBAL_CONFIG_DIR="${HOME}/.config/zsh/global"
# Zsh config
source "${GLOBAL_CONFIG_DIR}/zsh.zsh"
# Load Zinit
source "${GLOBAL_CONFIG_DIR}/zinit.zsh"
# Load plugins
source "${GLOBAL_CONFIG_DIR}/plugins.zsh"
# custom-cmd
source "${GLOBAL_CONFIG_DIR}/custom-cmd.zsh"
# alias
source "${GLOBAL_CONFIG_DIR}/alias.zsh"
# only WSL
[[ "$(uname -r)" == *microsoft* ]] && source "${GLOBAL_CONFIG_DIR}/wsl.zsh"
# completion
source "${GLOBAL_CONFIG_DIR}/completion.zsh"
