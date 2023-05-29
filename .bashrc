# If not running interactively, don't do anything.
[[ $- != *i* ]] && return

# SSH directly into the "ssh" tmux session.
function sshmux() {
    ssh -t $@ 'bash -l -c '"'"'exec tmux new -A -s ssh'"'"''
}

# Aliases.
alias dot='git --git-dir=$HOME/.config/.dotfiles --work-tree=$HOME'
alias hx='helix'
alias la='ls -lAFh --color=auto --group-directories-first'
alias ll='ls -lFh --color=auto --group-directories-first'
alias yeet='paru -Rcns'

# Bash settings.
shopt -s globstar   # Enable ** glob pattern.
shopt -s histappend # Enable appending to $HISTFILE.

# Enable Starship.
eval "$(starship init bash)"
