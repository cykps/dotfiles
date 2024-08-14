local ZSH_GLOBAL="${HOME}/.config/zsh/global"
# Zsh config
source ${ZSH_GLOBAL}/zsh.zsh
# Load Zinit
source ${ZSH_GLOBAL}/zinit.zsh
# Load plugins
source ${ZSH_GLOBAL}/plugins.zsh
# completion
source ${ZSH_GLOBAL}/completion.zsh
# alias
source ${ZSH_GLOBAL}/alias.zsh
# only WSL
[[ "$(uname -r)" == *microsoft* ]] && source ${ZSH_GLOBAL}/wsl.zsh
