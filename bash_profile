if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

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

# Setup PATH.
pathsuffix "$HOME/.cargo/bin"
pathsuffix "$HOME/.multirust/toolchains/stable/cargo/bin"
pathsuffix "$HOME/.local/bin"
pathsuffix "$HOME/bin"
