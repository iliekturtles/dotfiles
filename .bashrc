#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

function sshmux() {
    ssh -t $@ 'bash -l -c '"'"'exec tmux new -A -s ssh'"'"''
}

alias dot='git --git-dir=$HOME/.config/.dotfiles --work-tree=$HOME'
alias hx='helix'
alias la='ls -lAFh --color=auto --group-directories-first'
alias ll='ls -lFh --color=auto --group-directories-first'

# Enable Starship.
eval "$(starship init bash)"
