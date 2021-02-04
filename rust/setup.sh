#!/bin/bash
cd "${0%/*}"

if hash rustup 2>/dev/null; then
	echo "Rust toolchain setup..."
    rustup self update
    rustup set profile minimal

    echo "Toolchain install..."
    rustup toolchain install --profile minimal stable --component clippy,rust-docs,rust-src,rustfmt
    rustup toolchain install --profile minimal beta
    rustup toolchain install --profile minimal nightly --component clippy,rust-docs,rust-src,rustfmt

    echo "Bash completions..."
    rustup completions bash rustup > "$XDG_DATA_HOME/bash_completion/completions/rustup"
    rustup completions bash cargo > "$XDG_DATA_HOME/bash_completion/completions/cargo"
fi

if hash cargo 2>/dev/null; then
    if hash cmake 2>/dev/null; then
        echo "Rust tools setup..."
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
            dua-cli \
            fd-find \
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
