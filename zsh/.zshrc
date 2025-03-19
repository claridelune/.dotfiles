# Local
setxkbmap us
TZ='America/Chicago'; export TZ

# Enable fish shell
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=247'
ZSH_AUTOSUGGEST_USE_ASYNC=1
source ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source $HOME/.zsh-plugins/fzf/completion.zsh
source $HOME/.zsh-plugins/fzf/key-bindings.zsh

# PROMPR, git, hostnames
source ~/.zsh-plugins/git-prompt.zsh/git-prompt.zsh
source ~/.zsh-plugins/git-prompt.zsh/examples/bashgitprompt.zsh

# Enable sintax highlighting :3
source ~/.zsh-plugins/F-Sy-H/F-Sy-H.plugin.zsh

# autosuggest plugin
bindkey '^ ' autosuggest-accept
bindkey '^f' autosuggest-accept

. ~/.dotfiles/zsh/system/init.zsh
blocks
source ~/.secrets
