# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blinks"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


alias which='nocorrect which'


# dont bind processes to terminal
setopt nohup

# Dont autocorrect me
unsetopt correct

# Store history and about a year
HISTFILE=~/.history
SAVEHIST=10000
HISTSIZE=10000
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE
setopt EXTENDED_HISTORY
# Share hist between shells
setopt SHARE_HISTORY

## Vim mode in terminal
#bindkey -v
## keybindings - Behave properly
#bindkey -M viins '^[OH' beginning-of-line
#bindkey -M viins '^[OF' end-of-line
#bindkey -M viins '^r' history-incremental-search-backward
#bindkey -M vicmd '^r' history-incremental-search-backward
#
#bindkey -M vicmd "//" history-beginning-search-backward
#bindkey -M vicmd "??" history-beginning-search-forward
## Delete line
#bindkey -M vicmd "q" push-line
## Undo
#bindkey -M vicmd 'u' undo
#
## Delete-button
#bindkey '\e[3~' delete-char
#bindkey -M viins '\C-i' complete-word
#
#
#function zle-keymap-select {
#    VIMODE="${${KEYMAP/vicmd/ M:command}/(main|viins)/}"
#    zle reset-prompt
#}
#
#zle -N zle-keymap-select
#

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi
#
