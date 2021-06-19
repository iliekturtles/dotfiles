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
    mkdir -p ~/AppData/Roaming/{KeePass,Code/User}

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
touch "$XDG_CONFIG_HOME/git/"{config,credentials}

cp gitignore "$XDG_CONFIG_HOME/git/ignore"

git config --global commit.verbose true
git config --global core.commentChar ";"
git config --global core.excludesfile "$XDG_CONFIG_HOME/git/ignore"
git config --global credential.https://github.com.username "mike.boutin@gmail.com"
git config --global diff.algorithm histogram
git config --global diff.tool vimdiff
git config --global diff.wsErrorHighlight all
git config --global fetch.prune true
git config --global pretty.changelog "format:%C(auto)%h%d %Cgreen%an %Cred(%cr) %Creset%s"
git config --global pull.ff only
git config --global push.default simple
git config --global push.recurseSubmodules check
git config --global rerere.autoUpdate true
git config --global rerere.enabled true
git config --global submodule.fetchJobs 0
git config --global tig.tab-size 4

git config --global alias.ci "commit"
git config --global alias.cia "commit -a"
git config --global alias.ciaa "commit -a --amend"
git config --global alias.cip "commit -p"
git config --global alias.cipa "commit -p --amend"
git config --global alias.co "checkout"
git config --global alias.cop "checkout -p"
git config --global alias.cs '!git checkout $1 && git down ; git submodule update ; :'
git config --global alias.down "merge --ff-only"
git config --global alias.ds "diff --staged"
git config --global alias.f "fetch"
git config --global alias.facs '!git fat && git checkout $1 && git down ; git submodule update ; :'
git config --global alias.fars '!git fat && git checkout $1 && git reset --hard origin/$1 ; git submodule update ; :'
git config --global alias.fat "fetch --all --tags"
git config --global alias.fcs '!git ft && git checkout $1 && git down ; git submodule update ; :'
git config --global alias.frs '!git ft && git checkout $1 && git reset --hard origin/$1 ; git submodule update ; :'
git config --global alias.ft "fetch --tags"
git config --global alias.lag "log --all --graph --pretty=changelog --date-order"
git config --global alias.lg "log --graph --pretty=changelog --date-order"
git config --global alias.lp "log -p"
git config --global alias.rs '!git checkout $1 && git reset --hard origin/$1 ; git submodule update ; :'
git config --global alias.skipped '!git ls-files -v | grep "^[hS]"'
git config --global alias.st "status -sb"
git config --global alias.unstage "reset HEAD --"
git config --global alias.up "pull --ff-only"

if [ ! -z "$MSYSTEM" ]; then
    git config --global core.autocrlf true
    git config --global core.pager "less -RS -x4"
else
    git config --global core.autocrlf input
    git config --global core.pager "less -S -x4"
fi

if [[ ! $(git config --global user.name) ]]; then
    echo "git config --global user.name \"name\""
    echo "git config --global user.email \"email\""
fi

echo "Setup Base16..."
if [ ! -d "$XDG_CONFIG_HOME/base16-shell" ]; then
    git clone https://github.com/chriskempson/base16-shell.git "$XDG_CONFIG_HOME/base16-shell"
else
    git -C "$XDG_CONFIG_HOME/base16-shell" pull
fi
