#!/bin/bash
# Bash setup.
cp bash_profile ~/.bash_profile
cp bashrc ~/.bashrc

mkdir -p ~/.config/git

# Setup tmux, VsVim, mintty, and VSCode.
if [ ! -z $MSYSTEM ]; then
    mkdir -p ~/.config/mintty
    mkdir -p ~/AppData/Roaming/KeePass
    mkdir -p ~/AppData/Roaming/Code/User

    dos2unix -n tmux.conf ~/.tmux.conf
    cp _vsvimrc ~/_vsvimrc
    cp minttyrc ~/.config/mintty/config
    cp KeePass.config.xml ~/AppData/Roaming/KeePass
    cat settings.json | envsubst > ~/AppData/Roaming/Code/User/settings.json
else
    cp tmux.conf ~/.tmux.conf
fi

# Source bash_profile.
. ~/.bash_profile
