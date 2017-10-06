# Utility functions
pathprefix() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="$1${PATH:+":$PATH"}"
    fi
}
pathsuffix() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

# XDG defaults
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}

# Export environment variables.
export EDITOR=vim
export HISTCONTROL=ignoreboth
export HISTFILESIZE=2000
export HISTSIZE=1000
export GIT_PS1_SHOWDIRTYSTATE=*
export GIT_PS1_SHOWSTASHSTATE=$
export VIMINIT=":source $XDG_CONFIG_HOME/vim/vimrc"
export TMUX_TMPDIR="$XDG_RUNTIME_DIR"
if [ ! -z $MSYSTEM ]; then
    export PS1="\[\e[00;33m\]\w\$(__git_ps1 ' \[\e[00;36m\](%s)')\[\e[0m\]\$ "
    if [ -d /usr/share/terminfo ]; then
        export MSYS_TERMINFO=`cygpath -w /usr/share/terminfo`
    fi

    pathsuffix "$(cygpath "$CARGO_HOME")/bin"
    pathsuffix "/c/Program Files (x86)/Microsoft Visual Studio/2017/Professional/Common7/IDE/CommonExtensions/Microsoft/CMake/CMake/bin"
    pathsuffix "/c/Program Files (x86)/Microsoft Visual Studio/2017/BuildTools/Common7/IDE/CommonExtensions/Microsoft/CMake/CMake/bin"
else
    export PS1="\[\e[00;32m\]\u@\h \[\e[00;33m\]\w\$(__git_ps1 ' \[\e[00;36m\](%s)')\[\e[0m\]\$ "
    export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
    export CARGO_HOME="$XDG_DATA_HOME/cargo"

    pathsuffix "$CARGO_HOME/bin"
fi

pathsuffix "$HOME/.local/bin"

# Export additional environment variables.
if hash rustc 2>/dev/null; then
    if [ -d "$(rustc --print sysroot)/lib/rustlib/src/rust/src" ]; then
        export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
    fi
    export RUST_TOOLCHAIN=`basename $(rustc --print sysroot)`
fi
if hash racer 2>/dev/null; then
    export RACER_PATH=`which racer`
fi

# Source bashrc.
if [ -f ~/.bashrc ]; then source ~/.bashrc; fi

# Base16 shell coloring
if [ -f "$XDG_CONFIG_HOME/base16-shell/scripts/base16-spacemacs.sh" ]; then
    source "$XDG_CONFIG_HOME/base16-shell/scripts/base16-spacemacs.sh"
fi

# vim: set ft=sh:
