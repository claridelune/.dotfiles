export HISTFILE=~/.histfile
export HISTSIZE=1000000   # the number of items for the internal history list
export SAVEHIST=1000000   # maximum number of items for the history file

# The meaning of these options can be found in man page of `zshoptions`.
setopt HIST_IGNORE_ALL_DUPS  
setopt HIST_SAVE_NO_DUPS  
setopt HIST_REDUCE_BLANKS  
setopt INC_APPEND_HISTORY_TIME  

# Local
setxkbmap latam
TZ='America/Lima'; export TZ

# Enable fish shell
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=247'
ZSH_AUTOSUGGEST_USE_ASYNC=1
source ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source $HOME/.zsh-plugins/fzf/completion.zsh
source $HOME/.zsh-plugins/fzf/key-bindings.zsh

# PROMPR, git, hostnames
source ~/.zsh-plugins/git-prompt.zsh/git-prompt.zsh
source ~/.zsh-plugins/git-prompt.zsh/examples/wprompt.zsh

# Enable sintax highlighting :3
source ~/.zsh-plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# autosuggest plugin
bindkey '^ ' autosuggest-accept
bindkey '^f' autosuggest-accept
