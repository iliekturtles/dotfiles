#!/bin/bash
# Rust toolchain setup.
if hash rustup 2>/dev/null; then
    rustup self update

    # Stable.
    rustup toolchain add stable
    rustup component add rls-preview
    rustup component add rust-analysis
    rustup component add rust-src

    # Nightly. Only update if rls-preview exists.
    if curl -s https://static.rust-lang.org/dist/channel-rust-nightly.toml | grep -q "\[pkg.rls-preview\]"; then
        rustup toolchain add nightly
        rustup component add rls-preview --toolchain nightly
        rustup component add rust-analysis --toolchain nightly
        rustup component add rust-src --toolchain nightly
    fi
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
        cargo install racer
    fi
    if ! hash rg 2>/dev/null; then
        cargo install ripgrep
    fi
    if ! hash rustfmt 2>/dev/null; then
        cargo +nightly install rustfmt-nightly
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

        cargo install-update cargo-expand cargo-outdated racer ripgrep tokei xsv
        cargo +nightly install-update rustfmt-nightly
    else
        echo "cargo install-update not installed (cmake missing)."
    fi
fi

# Vim plugin setup.
if hash vim 2>/dev/null; then
    vim +PluginClean +PluginInstall! +qall
fi
