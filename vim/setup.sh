#!/bin/bash
cd "${0%/*}"

# Setup vim
if hash vim 2>/dev/null; then
    echo "Setup vim config files..."

    mkdir -p "$XDG_CONFIG_HOME/vim/autoload"
    mkdir -p "$XDG_DATA_HOME/vim/"{backup,swap,undo}

    cp *.vim "$XDG_CONFIG_HOME/vim/"

    if [ -f "$XDG_CONFIG_HOME/vim/vimrc" ]; then
        echo "Removing old vimrc..."

        rm "$XDG_CONFIG_HOME/vim/vimrc"
    fi

    if [ -d "$XDG_CONFIG_HOME/vim/bundle" ]; then
        echo "Remove Vundle..."

        rm -rf "$XDG_CONFIG_HOME/vim/bundle"
    fi

    if [ ! -f "$XDG_CONFIG_HOME/vim/autoload/plug.vim" ]; then
        echo "Install vim-plug..."

        curl -fLo "$XDG_CONFIG_HOME/vim/autoload/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    fi

    echo "Plug-in setup..."
    vim +PlugUpgrade +PlugClean +PlugUpdate! +qall
fi

# Setup NeoVim
if hash nvim 2>/dev/null; then
    echo "Setup neovim config files..."

    mkdir -p "$XDG_CONFIG_HOME/nvim"
    mkdir -p "$XDG_DATA_HOME/nvim/site/autoload"
    mkdir -p "$XDG_DATA_HOME/nvim/"{backup,swap,undo}

    cp *.vim "$XDG_CONFIG_HOME/nvim/"

    if [ ! -f "$XDG_DATA_HOME/nvim/site/autoload/plug.vim" ]; then
        echo "Install vim-plug..."

        cp "$XDG_CONFIG_HOME/vim/autoload/plug.vim" "$XDG_DATA_HOME/nvim/site/autoload/"
    fi

    echo "Install win32yank..."
    if [ ! -z "$MSYSTEM" ] && [ -d "$LOCALAPPDATA/Programs/Microsoft VS Code/bin/" ]; then
        cp win32yank.exe "$LOCALAPPDATA/Programs/Microsoft VS Code/bin/"
    elif [ ! -z "$WSL_DISTRO_NAME" ]; then
        mkdir -p "~/.local/bin"
        cp win32yank.exe ~/.local/bin/
    fi

    echo "Plug-in setup..."
    nvim +PlugUpgrade +PlugClean +PlugUpdate! +qall
fi
