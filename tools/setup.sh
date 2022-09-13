#!/bin/bash
cd "${0%/*}"

# https://packages.msys2.org/package/zsh?repo=msys&variant=x86_64
# https://packages.msys2.org/package/tmux?repo=msys&variant=x86_64
# https://packages.msys2.org/package/libevent?repo=msys&variant=x86_64

if hash apt 2>/dev/null; then
    echo "Package setup..."

    REPOSITORIES=(
        'git-core/ppa'
        'jonathonf/vim'
        'neovim-ppa/unstable'
    )

    for repository in "${REPOSITORIES[@]}"
    do
        if ! apt-cache policy | grep -q "$repository"; then
            sudo apt-add-repository -y ppa:"$repository"
        fi
    done

    sudo apt update

    if ! dpkg -l | grep ^ii | grep -q neovim; then
        sudo apt install -y cmake git libssl-dev neovim pkg-config vim
    else
        sudo apt upgrade
        sudo apt autoremove
    fi
fi

if ! hash rustup 2>/dev/null; then
    echo "Rustup setup..."

    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

if [ ! -z "$MSYSTEM" ] && hash code 2>/dev/null; then
    echo "VSCode extension setup..."

    EXTENSIONS=(
        'bungcip.better-toml'
        'DotJoshJohnson.xml'
        'dunstontc.viml'
        'ms-dotnettools.csharp'
        'ms-vscode-remote.remote-wsl'
        'ms-vscode.hexeditor'
        'rust-lang.rust-analyzer'
        'streetsidesoftware.code-spell-checker'
        'vadimcn.vscode-lldb'
    )
    OLD_EXTENSIONS=(
        'matklad.rust-analyzer'
    )

    if hash sqlcmd 2>/dev/null; then
        EXTENSIONS+=('ms-mssql.mssql')
    fi

    if wsl -l >/dev/null && [ "$EDITOR" == "nvim" ]; then
        echo "Install win32yank..."
        if [ ! -z "$MSYSTEM" ] && [ -d "$LOCALAPPDATA/Programs/Microsoft VS Code/bin/" ]; then
            cp ../vim/win32yank.exe "$LOCALAPPDATA/Programs/Microsoft VS Code/bin/"
        fi

        EXTENSIONS+=('asvetliakov.vscode-neovim')
        OLD_EXTENSIONS+=('vscodevim.vim')
    else
        EXTENSIONS+=('vscodevim.vim')
        OLD_EXTENSIONS+=('asvetliakov.vscode-neovim')
    fi

    for extension in "${EXTENSIONS[@]}"
    do
        if ! code --list-extensions | grep -q "$extension"; then
            code --install-extension "$extension"
        fi
    done

    for extension in "${OLD_EXTENSIONS[@]}"
    do
        if code --list-extensions | grep -q "$extension"; then
            code --uninstall-extension "$extension"
        fi
    done
fi

