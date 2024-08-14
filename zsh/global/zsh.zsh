## Zsh config
bindkey -v
setopt histignoredups #↑キーで同じコマンドをスキップして履歴を遡る
setopt auto_cd #dir名のみでcdできる
setopt auto_pushd #cd時にdirを自動でdirスタックに追加
setopt pushd_ignore_dups #dirスタック追加時に重複させない
setopt auto_param_keys #
# History
export HISTFILE=~/.zsh_history
export HISTSIZE=1000 #history size on memory
export SAVEHIST=100000 #history size on file
setopt hist_ignore_dups
setopt EXTENDED_HISTORY #save start and finish
setopt hist_reduce_blanks #trim blanks
