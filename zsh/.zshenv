export HISTFILE=~/.histfile
export HISTSIZE=1000000   # the number of items for the internal history list
export SAVEHIST=1000000   # maximum number of items for the history file
export HISTCONTROL='ignoreboth';
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear";
# The meaning of these options can be found in man page of `zshoptions`.
setopt HIST_IGNORE_ALL_DUPS  
setopt HIST_SAVE_NO_DUPS  
setopt HIST_REDUCE_BLANKS  
setopt INC_APPEND_HISTORY_TIME  

typeset -U PATH path

# Custom Scripts
PATH=$PATH:~/.dotfiles/bin

# TexLab
PATH=$PATH:~/.cargo/bin

# Python
PATH=$PATH:~/.local/bin

#CUDA
export PATH=/opt/cuda/bin:$PATH
export LD_LIBRARY_PATH=/opt/cuda/lib64:$LD_LIBRARY_PATH

# General Environment Variables
export LANG=en_US.UTF-8

export XDG_CONFIG_HOME="$HOME/.config"
export EDITOR="nvim"
export READER="zathura"
export BROWSER="vivaldi-stable"
export ARCHFLAGS="-arch x86_64"

# FZF
export FZF_CTRL_T_COMMAND='fd --type f --hidden --exclude .git --exclude .cache'
export FZF_CTRL_T_OPTS='--preview "bat --style=numbers --color=always --line-range :500 {}"'
export FZF_ALT_C_COMMAND='fd --type d --hidden --exclude .git'
export FZF_DEFAULT_OPTS='--layout=reverse'
