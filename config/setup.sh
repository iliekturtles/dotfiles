#!/bin/bash
cd "${0%/*}"

_DOTFILES_VERSION="3"

if [ ! -z "$MSYSTEM" ] && [ "$DOTFILES_VERSION" != "$_DOTFILES_VERSION" ]; then
    echo "Setup Windows environment variables..."

    setx DOTFILES_VERSION "$_DOTFILES_VERSION"
    setx RUSTUP_HOME "$(cygpath -w "$XDG_DATA_HOME/rustup")"
    setx CARGO_HOME "$(cygpath -w "$XDG_DATA_HOME/cargo")"

    echo "Windows environment variables set, prompt restart required."
    exit
fi

echo "Setup KeePass, mintty, and VsVim..."
if [ ! -z "$MSYSTEM" ]; then
    mkdir -p "$XDG_CONFIG_HOME/mintty"
    mkdir -p ~/AppData/Roaming/KeePass

    cp _vsvimrc ~/_vsvimrc
    dos2unix -n -q minttyrc "$XDG_CONFIG_HOME/mintty/config"
    dos2unix -n -q minttyrc "$APPDATA/wsltty/config"
    cp KeePass.config.xml ~/AppData/Roaming/KeePass
fi

echo "Setup Base16..."
if [ ! -d "$XDG_CONFIG_HOME/base16-shell" ]; then
    git clone https://github.com/chriskempson/base16-shell.git "$XDG_CONFIG_HOME/base16-shell"
else
    git -C "$XDG_CONFIG_HOME/base16-shell" pull
fi
