#!/bin/bash
# Bash setup.
cp bash_profile ~/.bash_profile
cp bashrc ~/.bashrc

# Setup tmux, VsVim, mintty, and VSCode.
if [ ! -z $MSYSTEM ]; then
    dos2unix -n tmux.conf ~/.tmux.conf
    cp _vsvimrc ~/_vsvimrc
    cp minttyrc ~/.minttyrc

    [ -d "$HOME/AppData/Roaming/Code/User" ] && \
        cat settings.json | envsubst > ~/AppData/Roaming/Code/User/settings.json
else
    cp tmux.conf ~/.tmux.conf
fi

# Source bash_profile.
. ~/.bash_profile

# Git setup.
./git-setup.sh

[ ! -d ~/.vim/bundle/Vundle.vim ] && \
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# VIM setup and install plug-ins.
./vim-setup.sh
