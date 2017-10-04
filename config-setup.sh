#!/bin/bash
# Bash setup.
cp bash_profile ~/.bash_profile
cp bashrc ~/.bashrc
source ~/.bash_profile

# Setup config directories.
mkdir -p "$XDG_CONFIG_HOME"/{git,tmux}

# Setup KeePass, mintty, tmux, VsVim.
if [ ! -z "$MSYSTEM" ]; then
    mkdir -p "$XDG_CONFIG_HOME/mintty"
    mkdir -p ~/AppData/Roaming/KeePass

    dos2unix -n -q tmux.conf "$XDG_CONFIG_HOME/tmux/config"
    cp _vsvimrc ~/_vsvimrc
    dos2unix -n -q minttyrc "$XDG_CONFIG_HOME/mintty/config"
    cp KeePass.config.xml ~/AppData/Roaming/KeePass
else
    cp tmux.conf "$XDG_CONFIG_HOME/tmux/config"
fi

# Git.
touch "$XDG_CONFIG_HOME/git/config"

git config --global commit.verbose true
git config --global core.excludesfile "$XDG_CONFIG_HOME/git/ignore"
git config --global credential.https://github.com.username "mike.boutin@gmail.com"
git config --global diff.wsErrorHighlight all
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

if [ ! -z "$MSYSTEM" ]; then
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

cp gitignore "$XDG_CONFIG_HOME/git/ignore"
if [[ ! $(git config --global user.name) ]]; then
    echo "git config --global user.name \"name\""
    echo "git config --global user.email \"email\""
fi

# Base16
if [ ! -d "$XDG_CONFIG_HOME/base16-shell" ]; then
    git clone https://github.com/chriskempson/base16-shell.git "$XDG_CONFIG_HOME/base16-shell"
fi

# Vim.
mkdir -p "$XDG_CONFIG_HOME/vim/"{colors,syntax}
mkdir -p "$XDG_CACHE_HOME/vim/"{backup,swap,undo}
cp vimrc "$XDG_CONFIG_HOME/vim/vimrc"
[ -f /usr/share/doc/tmux/examples/tmux.vim ] && \
    cp /usr/share/doc/tmux/examples/tmux.vim "$XDG_CONFIG_HOME/vim/syntax/tmux.vim"
[ -f /usr/share/vim/vimfiles/syntax/tmux.vim ] && \
    cp /usr/share/vim/vimfiles/syntax/tmux.vim "$XDG_CONFIG_HOME/vim/syntax/tmux.vim"
[ ! -d "$XDG_CONFIG_HOME/vim/bundle/Vundle.vim" ] && \
    git clone https://github.com/VundleVim/Vundle.vim.git "$XDG_CONFIG_HOME/vim/bundle/Vundle.vim"
