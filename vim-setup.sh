#!/bin/bash
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/syntax
cp vimrc ~/.vim/vimrc
cp elfmagic.vim ~/.vim/colors/elfmagic.vim
[ -f /usr/share/doc/tmux/examples/tmux.vim ] && \
    cp /usr/share/doc/tmux/examples/tmux.vim ~/.vim/syntax/tmux.vim
[ -f /usr/share/vim/vimfiles/syntax/tmux.vim ] && \
    cp /usr/share/vim/vimfiles/syntax/tmux.vim ~/.vim/syntax/tmux.vim
[ ! -d ~/.vim/bundle/Vundle.vim ] && \
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginClean +PluginInstall!
