#!/bin/bash
cd "${0%/*}"

_DOTFILES_VERSION="3"

if [ ! -z "$MSYSTEM" ] && [ "$DOTFILES_VERSION" != "$_DOTFILES_VERSION" ]; then
    echo "Setup Windows environment variables..."

    setx DOTFILES_VERSION "$_DOTFILES_VERSION"
    setx VIMINIT "if "'!'"has(\"nvim\") | source $(cygpath -m $XDG_CONFIG_HOME/vim/init.vim) | else | source $(cygpath -m $XDG_CONFIG_HOME/nvim/init.vim) | endif"
    setx RUSTUP_HOME "$(cygpath -w "$XDG_DATA_HOME/rustup")"
    setx CARGO_HOME "$(cygpath -w "$XDG_DATA_HOME/cargo")"

    echo "Windows environment variables set, prompt restart required."
    exit
fi

echo "Setup config directories..."
mkdir -p "$XDG_CONFIG_HOME"/{git,tmux}
mkdir -p "$XDG_DATA_HOME/bash_completion/completions"

echo "Setup KeePass, mintty, tmux, VsVim, and WSL..."
if [ ! -z "$MSYSTEM" ]; then
    mkdir -p "$XDG_CONFIG_HOME/mintty"
    mkdir -p ~/AppData/Roaming/KeePass

    dos2unix -n -q tmux.conf "$XDG_CONFIG_HOME/tmux/config"
    cp _vsvimrc ~/_vsvimrc
    dos2unix -n -q minttyrc "$XDG_CONFIG_HOME/mintty/config"
    dos2unix -n -q minttyrc "$APPDATA/wsltty/config"
    cp KeePass.config.xml ~/AppData/Roaming/KeePass
else
    if [ ! -z "$WSL_DISTRO_NAME" ] && ! diff -q wsl.conf /etc/wsl.conf; then
        sudo cp -f wsl.conf /etc/wsl.conf
        sudo unlink /etc/resolv.conf
        sudo cp -f resolv.conf /etc/resolv.conf
    fi

    cp tmux.conf "$XDG_CONFIG_HOME/tmux/config"
fi

echo "Setup git..."
touch "$XDG_CONFIG_HOME/git/credentials"

cp gitconfig "$XDG_CONFIG_HOME/git/config"
cp gitignore "$XDG_CONFIG_HOME/git/ignore"

git config --global core.excludesfile "$XDG_CONFIG_HOME/git/ignore"

if [ ! -z "$MSYSTEM" ]; then
    git config --global core.autocrlf true
else
    git config --global core.autocrlf input
fi

echo "Setup Base16..."
if [ ! -d "$XDG_CONFIG_HOME/base16-shell" ]; then
    git clone https://github.com/chriskempson/base16-shell.git "$XDG_CONFIG_HOME/base16-shell"
else
    git -C "$XDG_CONFIG_HOME/base16-shell" pull
fi
