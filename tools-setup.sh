#!/bin/bash
# Package setup
if hash apt 2>/dev/null; then
    if ! dpkg -l | grep ^ii | grep -q cmake; then
        sudo apt install cmake libssl-dev pkg-config
    fi
fi

# Git and Vim setup.
if hash apt-cache 2>/dev/null; then
    if ! apt-cache policy | grep -q "git-core/ppa"; then
        sudo apt-add-repository ppa:git-core/ppa
        sudo apt update
        sudo apt install git
    fi
    if ! apt-cache policy | grep -q "jonathonf/vim"; then
        sudo add-apt-repository ppa:jonathonf/vim
        sudo apt update
        sudo apt install vim
    fi
fi

# Vim plugin setup.
if hash vim 2>/dev/null; then
    vim +PluginClean +PluginInstall! +qall
fi

# Rust toolchain setup.
if hash rustup 2>/dev/null; then
    rustup self update

    # Stable.
    rustup toolchain add stable
    rustup component add clippy
    rustup component add rls
    rustup component add rust-analysis
    rustup component add rust-src
    rustup component add rustfmt

    # Nightly.
    rustup toolchain add nightly
    rustup component add clippy --toolchain nightly
    rustup component add rls --toolchain nightly
    rustup component add rust-analysis --toolchain nightly
    rustup component add rust-src --toolchain nightly
    rustup component add rustfmt --toolchain nightly
fi

# Rust tools setup.
if hash cargo 2>/dev/null; then
    if hash cmake 2>/dev/null; then
        if ! hash cargo-install-update 2>/dev/null; then
            cargo install cargo-update
        fi
        if ! hash ra_lsp_server 2>/dev/null; then
            cargo install --git https://github.com/rust-analyzer/rust-analyzer.git ra_lsp_server
        fi
        if ! hash racer 2>/dev/null; then
            cargo install-update-config racer -t nightly
        fi

        cargo install-update -i \
            cargo-update \
            cargo-expand \
            cargo-outdated \
            cargo-tree \
            racer \
            ripgrep \
            tokei \
            xsv
        cargo install-update -g \
            ra_lsp_server
    else
        echo "cargo install-update not installed (cmake missing)."
    fi
fi
