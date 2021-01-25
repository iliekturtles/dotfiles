#!/bin/bash
# Package setup
if hash apt 2>/dev/null; then
    REPOSITORIES=(
        'git-core/ppa'
        'jonathonf/vim'
    )

    for repository in "${REPOSITORIES[@]}"
    do
        if ! apt-cache policy | grep -q "$repository"; then
            sudo apt-add-repository -y ppa:"$repository"
        fi
    done

    if ! dpkg -l | grep ^ii | grep -q vim; then
        sudo apt update
        sudo apt install -y cmake git libssl-dev pkg-config vim
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
            bat \
            cargo-update \
            cargo-asm \
            cargo-expand \
            cargo-outdated \
            cargo-sweep \
            hyperfine \
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
    EXTENSIONS=(
        'bungcip.better-toml'
        'DotJoshJohnson.xml'
        'dunstontc.viml'
        'matklad.rust-analyzer'
        'ms-dotnettools.csharp'
        'ms-vscode-remote.remote-wsl'
        'ms-vscode.hexeditor'
        'streetsidesoftware.code-spell-checker'
        'vscodevim.vim'
    )

    if hash sqlcmd 2>/dev/null; then
        EXTENSIONS+=('ms-mssql.mssql')
    fi

    for extension in "${EXTENSIONS[@]}"
    do
        if ! code --list-extensions | grep -q "$extension"; then
            code --install-extension "$extension"
        fi
    done
fi
