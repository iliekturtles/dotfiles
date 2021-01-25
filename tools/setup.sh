#!/bin/bash
cd "${0%/*}"

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
        'matklad.rust-analyzer'
        'ms-dotnettools.csharp'
        'ms-vscode-remote.remote-wsl'
        'ms-vscode.hexeditor'
        'streetsidesoftware.code-spell-checker'
    )
    OLD_EXTENSIONS=(
    )

    if hash sqlcmd 2>/dev/null; then
        EXTENSIONS+=('ms-mssql.mssql')
    fi

    if wsl -l >/dev/null; then
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

