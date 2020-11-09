#!/bin/bash
# Package setup
if hash apt 2>/dev/null; then
    if ! dpkg -l | grep ^ii | grep -q cmake; then
        sudo apt install -y cmake libssl-dev pkg-config
    fi
fi

# Git and Vim setup.
if hash apt-cache 2>/dev/null; then
    if ! apt-cache policy | grep -q "git-core/ppa"; then
        sudo apt-add-repository -y ppa:git-core/ppa
        sudo apt update
        sudo apt install -y git
    fi
    if ! apt-cache policy | grep -q "jonathonf/vim"; then
        sudo add-apt-repository -y ppa:jonathonf/vim
        sudo apt update
        sudo apt install -y vim
    fi
fi

# Vim plugin setup.
if hash vim 2>/dev/null; then
    vim +PluginClean +PluginInstall! +qall
fi

# Rust toolchain setup.
if hash rustup 2>/dev/null; then
    rustup self update
    rustup set profile minimal

    # Toolchains.
    rustup toolchain install --profile minimal stable --component clippy,rust-docs,rust-src,rustfmt
    rustup toolchain install --profile minimal beta
    rustup toolchain install --profile minimal nightly --component clippy,rust-docs,rust-src,rustfmt

    # Completions
    rustup completions bash rustup > "$XDG_DATA_HOME/bash_completion/completions/rustup"
    rustup completions bash cargo > "$XDG_DATA_HOME/bash_completion/completions/cargo"
fi

# Rust tools setup.
if hash cargo 2>/dev/null; then
    if hash cmake 2>/dev/null; then
        if ! hash cargo-install-update 2>/dev/null; then
            cargo install cargo-update
        fi

        cargo install-update -i \
            cargo-update \
            cargo-asm \
            cargo-expand \
            cargo-outdated \
            cargo-sweep \
            ripgrep \
            tokei \
            xsv

        if hash cargo-tree 2>/dev/null; then
            cargo uninstall cargo-tree
        fi

        cargo sweep -i -r -v ..
    else
        echo "cargo install-update not installed (cmake missing)."
    fi
fi

# VSCode extension setup.
if [ ! -z "$MSYSTEM" ] && hash code 2>/dev/null; then
    if ! code --list-extensions | grep -q "bungcip.better-toml"; then
        code --install-extension bungcip.better-toml
    fi

    if ! code --list-extensions | grep -q "streetsidesoftware.code-spell-checker"; then
        code --install-extension streetsidesoftware.code-spell-checker
    fi

    if ! code --list-extensions | grep -q "DotJoshJohnson.xml"; then
        code --install-extension DotJoshJohnson.xml
    fi

    if hash sqlcmd 2>/dev/null; then
        if ! code --list-extensions | grep -q "ms-mssql.mssql"; then
            code --install-extension ms-mssql.mssql
        fi
    fi

    if ! code --list-extensions | grep -q "ms-dotnettools.csharp"; then
        code --install-extension ms-dotnettools.csharp
    fi

    if ! code --list-extensions | grep -q "ms-vscode-remote.remote-wsl"; then
        code --install-extension ms-vscode-remote.remote-wsl
    fi

    if ! code --list-extensions | grep -q "matklad.rust-analyzer"; then
        code --install-extension matklad.rust-analyzer
    fi

    if ! code --list-extensions | grep -q "ms-vscode.hexeditor"; then
        code --install-extension ms-vscode.hexeditor
    fi

    if ! code --list-extensions | grep -q "vscodevim.vim"; then
        code --install-extension vscodevim.vim
    fi
fi
