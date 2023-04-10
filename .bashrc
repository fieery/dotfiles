# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Vi keys
set -o vi

# alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '

# Directories
alias ..='cd ..'
alias dsk='cd $HOME/Desktop'
alias doc='cd $HOME/Documents'
alias dwn='cd $HOME/Downloads'
alias opt='cd /opt'
alias scr='cd $SCR'
alias hdd='cd /run/media/$USER/hdd/'
alias cnf='cd $HOME/.config'

# Commands
alias sudo='doas'
alias vim='nvim'
alias sxiv='sxiv $f ./'
alias config='git --git-dir=/opt/dotfiles.git --work-tree=$HOME'

export SCR=$(printf $HOME)'/.local/bin/scr'
export PS1='\[\033[38;5;73m\][\[$(tput bold)\]\u@\h\[$(tput sgr0)\] \W\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;73m\]]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]'
