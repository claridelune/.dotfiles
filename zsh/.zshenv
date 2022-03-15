# typeset -U PATH path

# General Environment Variables
export LANG=en_US.UTF-8

export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR="nvim"
# export BROWSER="vivaldi"
export ARCHFLAGS="-arch x86_64"

# FZF
export FZF_CTRL_T_COMMAND='fd --type f --hidden --exclude .git --exclude .cache'
export FZF_CTRL_T_OPTS='--preview "bat --style=numbers --color=always --line-range :500 {}"'
export FZF_ALT_C_COMMAND='fd --type d --hidden --exclude .git'
export FZF_DEFAULT_OPTS='--layout=reverse'
