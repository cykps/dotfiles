declare P10K_CONFIG="${GLOBAL_CONFIG_DIR}/p10k.zsh"

zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting
zinit light zdharma/history-search-multi-word

### Powerlevel10k
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f $P10K_CONFIG ]] || source $P10K_CONFIG
