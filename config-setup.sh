#!/bin/bash
# Bash setup.
cp bash_profile ~/.bash_profile
cp bashrc ~/.bashrc

# Setup KeePass, mintty, tmux, VSCode, VsVim.
if [ ! -z $MSYSTEM ]; then
    mkdir -p ~/.config/mintty
    mkdir -p ~/AppData/Roaming/KeePass
    mkdir -p ~/AppData/Roaming/Code/User

    dos2unix -n tmux.conf ~/.tmux.conf
    cp _vsvimrc ~/_vsvimrc
    cp minttyrc ~/.config/mintty/config
    cp KeePass.config.xml ~/AppData/Roaming/KeePass
    cat settings.json | envsubst '$USERNAME' > ~/AppData/Roaming/Code/User/settings.json
else
    cp tmux.conf ~/.tmux.conf
fi

# Git.
mkdir -p ~/.config/git
touch ~/.config/git/config

git config --global commit.verbose true
git config --global core.excludesfile "~/.config/git/ignore"
git config --global credential.https://github.com.username "mike.boutin@gmail.com"
git config --global fetch.prune true
git config --global pretty.changelog "format:%C(auto)%h%d %Cgreen%an %Cred(%cr) %Creset%s"
git config --global pull.ff only
git config --global push.default simple
git config --global push.recurseSubmodules check
git config --global submodule.fetchJobs 0

git config --global alias.ci "commit"
git config --global alias.ds "diff --staged"
git config --global alias.down "merge --ff-only"
git config --global alias.fat "fetch --all --tags"
git config --global alias.lag "log --all --graph --pretty=changelog --date-order"
git config --global alias.lg "log --graph --pretty=changelog --date-order"
git config --global alias.lp "log -p"
git config --global alias.skipped '!git ls-files -v | grep "^[hS]"'
git config --global alias.st "status -sb"
git config --global alias.unstage "reset HEAD --"
git config --global alias.up "pull --ff-only"
git config --global alias.update "pull --ff-only"

if [ ! -z $MSYSTEM ]; then
    git config --global core.autocrlf true
    git config --global core.commentChar ";"
    git config --global core.pager "less -RS -x5"
    git config --global credential.helper wincred
else
    git config --global core.autocrlf input
    git config --global core.commentChar auto
    git config --global core.pager "less -S -x5"
    git config --global credential.helper 'cache --timeout=14400'
fi

cp gitignore ~/.config/git/ignore
echo "git config --global user.name \"name\""
git config --global user.name
echo "git config --global user.email \"email\""
git config --global user.email

# Vim.
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
