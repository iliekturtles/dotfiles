#!/bin/bash
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
    rustup component add clippy-preview
    rustup component add rls-preview
    rustup component add rust-analysis
    rustup component add rust-src
    rustup component add rustfmt-preview

    rustup toolchain add nightly
    rustup component add clippy-preview --toolchain nightly
    rustup component add rls-preview --toolchain nightly
    rustup component add rust-analysis --toolchain nightly
    rustup component add rust-src --toolchain nightly
    rustup component add rustfmt-preview --toolchain nightly
fi

# Rust tools setup.
if hash cargo 2>/dev/null; then
    if ! hash cargo-expand 2>/dev/null; then
        cargo install cargo-expand
    fi
    if ! hash cargo-outdated 2>/dev/null; then
        cargo install cargo-outdated
    fi
    if ! hash racer 2>/dev/null; then
        cargo +nightly install racer
    fi
    if ! hash rg 2>/dev/null; then
        cargo install ripgrep
    fi
    if ! hash tokei 2>/dev/null; then
        cargo install tokei
    fi
    if ! hash xsv 2>/dev/null; then
        cargo install xsv
    fi

    if hash cmake 2>/dev/null; then
        if ! hash cargo-install-update 2>/dev/null; then
            cargo install cargo-update
        fi

        cargo install-update cargo-expand cargo-outdated ripgrep tokei xsv
        cargo +nightly install-update racer
    else
        echo "cargo install-update not installed (cmake missing)."
    fi
fi
