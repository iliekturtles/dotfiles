# Source global definitions.
[ -f /etc/bashrc ] && \
    . /etc/bashrc
if [ -z "$(type -t __git_ps1)" ]; then
    [ -f /etc/profile.d/git-prompt.sh ] && \
        . /etc/profile.d/git-prompt.sh
    [ -f /usr/share/git-core/contrib/completion/git-prompt.sh ] && \
        . /usr/share/git-core/contrib/completion/git-prompt.sh
fi
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Export environment variables.
export EDITOR=vim
export HISTCONTROL=ignoreboth
export HISTFILESIZE=2000
export HISTSIZE=1000
export PS1="\[\e[00;32m\]\u@\h \[\e[00;33m\]\w\$(__git_ps1 ' \[\e[00;36m\](%s)')\[\e[0m\]\$ "
export GIT_PS1_SHOWDIRTYSTATE=*
export GIT_PS1_SHOWSTASHSTATE=$

[ -d /s ] && \
    export SRC_PATH="/s"
[ -d "$HOME/Source" ] && \
    export SRC_PATH="$HOME/Source"
if hash rustc 2>/dev/null; then
    [ -d "$(rustc --print sysroot)/lib/rustlib/src/rust/src" ] && \
        export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
        export RUST_TOOLCHAIN="$(basename $(rustc --print sysroot))"
fi
[ -f "$HOME/.cargo/bin/racer" ] && \
    export RACER_PATH="$HOME/.cargo/bin/racer"

# User specific aliases, bindings, and functions.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias la='ls -lAh --color=auto'
alias ll='ls -lh --color=auto'
alias irssi='TERM=screen irssi'

function xsvd() {
    local cmd=$1
    shift && command xsv $cmd -d"|" $@
}

if [ ! -z $MSYSTEM ]; then
    export PS1="\[\e[00;33m\]\w\$(__git_ps1 ' \[\e[00;36m\](%s)')\[\e[0m\]\$ "

    #[ -d /usr/share/terminfo ] && \
    #    export TERMINFO=$(cygpath -w /usr/share/terminfo)

    alias cargo='winpty cargo'

    #function cargo() {
    #    local cmd=$1
    #    shift && command cargo $cmd --color always $@
    #}

    bind '"\t":complete'
    bind '"\e[1;5C":forward-word'
    bind '"\e[1;5D":backward-word'
fi

# Disable scroll-lock (Ctrl-s, Ctrl-q).
stty -ixon

# Check the window seize after each command.
shopt -s checkwinsize
shopt -s histappend

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
